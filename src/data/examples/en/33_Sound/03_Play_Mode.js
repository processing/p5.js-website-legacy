/*
 * @name Play Mode
 * @description
 * <p>In 'sustain' mode, the sound will overlap with itself.
 * In 'restart' mode it will stop and then start again.
 * Click mouse to play a sound file.
 * Trigger lots of sounds at once! Press any key to change playmode.</p>
 * <p><em><span class="small"> To run this example locally, you will need the
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound library</a>
 * a sound file, and a running <a href="https://github.com/processing/p5.js/wiki/Local-server">local server</a>.</span></em></p>
 */
let playMode = 'sustain';
let sample;

function setup() {
  createCanvas(710, 50);
  soundFormats('mp3', 'ogg');
  sample = loadSound('assets/Damscray_-_Dancing_Tiger_02.mp3');
}

function draw() {
  background(255, 255, 0);
  let str = 'Click here to play! Press key to toggle play mode.';
  str += ' Current Play Mode: ' + playMode + '.';
  text(str, 10, height / 2);
}

function mouseClicked() {
  sample.play();
}
function keyPressed(k) {
  togglePlayMode();
}

function togglePlayMode() {
  if (playMode === 'sustain') {
    playMode = 'restart';
  } else {
    playMode = 'sustain';
  }
  sample.playMode(playMode);
}
