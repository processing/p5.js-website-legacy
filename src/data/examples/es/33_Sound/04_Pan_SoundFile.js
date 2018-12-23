/*
 * @name Paneo
 * @description <p> Haz click para reproducir el sonido.
 * La pelota sigue la posición del ratón y se correlaciona con el paneo del sonido.</p>
 * <br><br><em><span class="small"> Para correr localmente este ejemplo, necesitarás la
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">biblioteca p5.sound</a>
 * un archivo de audio y correr un <a href="https://github.com/processing/p5.js/wiki/Local-server">servidor local</a>.</span></em>
 */
let ball = {};
let soundFile;

function preload() {
  soundFormats('mp3', 'ogg');
  soundFile = loadSound('assets/beatbox.ogg');
}

function setup() {
  createCanvas(710, 100);
}

function draw() {
  background(0);
  ball.x = constrain(mouseX, 0, width);
  ellipse(ball.x, height / 2, 100, 100);
}

function mousePressed() {
  // mapear la posición x de la pelota a un ángulo de paneo
  // entre -1.0 (izquierda) y 1.0 (derecha)
  let panning = map(ball.x, 0, width, -1.0, 1.0);
  soundFile.pan(panning);
  soundFile.play();
}
