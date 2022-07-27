/*
 * @name Pan Sound
 * @arialabel User moves a white ball on black screen, sound effect plays when the user clicks the screen and the sound comes out more of the speaker closer to the side the ball is on
 * @description <p>Click mouse to play the sound.
 * Ball position follows mouse and correlates to panning of sound.</p>
 * <p><em><span class="small"> To run this example locally, you will need the
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound library</a>
 * a sound file, and a running <a href="https://github.com/processing/p5.js/wiki/Local-server">local server</a>.</span></em></p>
 *
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
  // map the ball's x location to a panning degree
  // between -1.0 (left) and 1.0 (right)
  let panning = map(ball.x, 0, width, -1.0, 1.0);
  soundFile.pan(panning);
  soundFile.play();
}
