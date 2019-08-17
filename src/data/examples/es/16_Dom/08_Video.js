/*
 * @name Video
 * @frame 710,250
 * @description <p>Carga un video con múltiples formatos y alterna entre reproducir y pausar al presionar un botón.
 * <p><em><span class="small"> Para correr este ejemplo localmente, necesitarás al menos
 * un archivo de video y la
 * <a href="http://p5js.org/reference/#/libraries/p5.dom">biblioteca p5.dom</a>.</span></em></p>
 */
let playing = false;
let fingers;
let button;

function setup() {
  // especificar múltiples formatos para distintos navegadores
  fingers = createVideo(['assets/fingers.mov', 'assets/fingers.webm']);
  button = createButton('play');
  button.mousePressed(toggleVid); // adjuntar un listener al botón
}

// reproduce o pausa el video dependiendo de su estado actual
function toggleVid() {
  if (playing) {
    fingers.pause();
    button.html('play');
  } else {
    fingers.loop();
    button.html('pause');
  }
  playing = !playing;
}
