/*
 * @name Canción
 * @frame 720, 430
 * @description Toca una canción.
 * Necesitarás incluir la
 * <a href="http://p5js.org/reference/#/libraries/p5.sound"> biblioteca p5.sound</a>
 * a este ejemplo para que corra en tu máquina.
*/

// las notas midi de una escala
let notes = [ 60, 62, 64, 65, 67, 69, 71];

// para tocar la canción de forma automática
let index = 0;
let song = [
  { note: 4, duration: 400, display: "D" },
  { note: 0, duration: 200, display: "G" },
  { note: 1, duration: 200, display: "A" },
  { note: 2, duration: 200, display: "B" },
  { note: 3, duration: 200, display: "C" },
  { note: 4, duration: 400, display: "D" },
  { note: 0, duration: 400, display: "G" },
  { note: 0, duration: 400, display: "G" }
];
let trigger = 0;
let autoplay = false;
let osc;

function setup() {
  createCanvas(720, 400);
  let div = createDiv("Haz click para tocar las notas")
  div.id("instructions");
  let button = createButton("toca la canción automáticamente.");
  button.parent("instructions");
  // gatillar la reproducción automática
  button.mousePressed(function() {
    if (!autoplay) {
      index = 0;
      autoplay = true;
    }
  });

  // un oscilador de onda triangular
  osc = new p5.TriOsc();
  // empezar en silencio
  osc.start();
  osc.amp(0);
}

// una función para tocar una nota
function playNote(note, duration) {
  osc.freq(midiToFreq(note));
  // aparición gradual
  osc.fade(0.5,0.2);

  // si definimos una duración, apagar gradualmente
  if (duration) {
    setTimeout(function() {
      osc.fade(0,0.2);
    }, duration-50);
  }
}

function draw() {

  // Si estamos tocando automáticamente y es tiempo de tocar la siguiente nota
  if (autoplay && millis() > trigger){
    playNote(notes[song[index].note], song[index].duration);
    trigger = millis() + song[index].duration;
    // ir a la siguiente nota
    index ++;
  // cuando llegamos al final, dejar de tocar en automático
  } else if (index >= song.length) {
    autoplay = false;
  }


  // dibujar un teclado

  // el ancho de cada tecla
  let w = width / notes.length;
  for (let i = 0; i < notes.length; i++) {
    let x = i * w;
    // si el ratón está sobre la tecla
    if (mouseX > x && mouseX < x + w && mouseY < height) {
      // si estamos haciendo click
      if (mouseIsPressed) {
        fill(100,255,200);
      // o solamente estamos sobre ella
      } else {
        fill(127);
      }
    } else {
      fill(200);
    }

    // si estamos tocando la canción, resaltemos
    if (autoplay && i === song[index-1].note) {
      fill(100,255,200);
    }

    // dibujar la tecla
    rect(x, 0, w-1, height-1);
  }

}

// cuando hacemos click
function mousePressed(event) {
  if(event.button == 0 && event.clientX < width && event.clientY < height) {
    // mapear el ratón al índice de la tecla
    let key = floor(map(mouseX, 0, width, 0, notes.length));
    playNote(notes[key]);
  }
}

// Disminuye gradualmente cuando soltamos el botón del ratón
function mouseReleased() {
  osc.fade(0,0.5);
}
