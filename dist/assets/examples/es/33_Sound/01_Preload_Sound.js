/*
 * @name Precargar archivo de sonido
 * @description Llamar a loadSound() durante preload() para asegurar que el
 * sonido esté completamente cargado antes de llamar a setup(). Es mejor siempre
 * llamar a loadSound() dentro de preload(), si no podría pasar que los sonidos no estén cargados
 * al momento de querer reproducirlos en tu bosquejo.
 *
 * <br><br><em><span class="small"> Para correr localmente este ejemplo, necesitarás la
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">biblioteca p5.sound</a>
 * un archivo de audio y correr un <a href="https://github.com/processing/p5.js/wiki/Local-server">servidor local</a>.</span></em>
 */

let song;

function preload() {
  song = loadSound('assets/lucky_dragons_-_power_melody.mp3');
}

function setup() {
  createCanvas(710, 200);
  song.loop(); // la canción está lista para ser reproducida durante setup() porque fue cargada durante preload()
  background(0, 255, 0);
}

function mousePressed() {
  if (song.isPlaying()) {
    // .isPlaying() retorna una variable booleana
    song.pause(); // .play() continuará la reproducción desde la posición definida por .pause()
    background(255, 0, 0);
  } else {
    song.play();
    background(0, 255, 0);
  }
}
