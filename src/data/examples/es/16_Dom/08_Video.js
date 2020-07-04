/*
 * @name Video
 * @frame 710,250
 * @description Carga un video con múltiples formatos y alterna entre reproducir y pausar al presionar un botón.
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
