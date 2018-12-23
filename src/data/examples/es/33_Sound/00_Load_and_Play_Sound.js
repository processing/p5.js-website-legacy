/*
 * @name Cargar y reproducir sonido
 * @description Carga de sonido durante preload(). Reproducir un sonido cuando se hace click en el lienzo.
 * <br><br><em><span class="small"> Para correr localmente este ejemplo, necesitarás la
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">biblioteca p5.sound</a>
 * un archivo de audio y correr un <a href="https://github.com/processing/p5.js/wiki/Local-server">servidor local</a>.</span></em>
 */
let song;

function setup() {
  song = loadSound('assets/lucky_dragons_-_power_melody.mp3');
  createCanvas(720, 200);
  background(255, 0, 0);
}

function mousePressed() {
  if (song.isPlaying()) {
    // .isPlaying() retorna una variable booleana
    song.stop();
    background(255, 0, 0);
  } else {
    song.play();
    background(0, 255, 0);
  }
}
