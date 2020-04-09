/*
<<<<<<< HEAD
 * @name 사운드 패닝
 * @description <p>마우스를 클릭해 사운드를 재생하세요.
 * 공의 위치는 마우스의 위치와 더불어, 사운드의 패닝과도 관련됩니다.</p>
 * <p><em><span class="small"> 로컬 프로젝트에서 이 예제를 실행하려면 적어도 한 개의 사운드 파일이 필요하고,
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound 라이브러리</a>를 추가해야 되며, 
 * <a href="https://github.com/processing/p5.js/wiki/Local-server">로컬 서버</a>를 작동시켜야 합니다.</span></em></p>
=======
 * @name Pan Sound
 * @description <p>Click mouse to play the sound.
 * Ball position follows mouse and correlates to panning of sound.</p>
 * <p><em><span class="small"> To run this example locally, you will need the
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound library</a>
 * a sound file, and a running <a href="https://github.com/processing/p5.js/wiki/Local-server">local server</a>.</span></em></p>
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
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
<<<<<<< HEAD
  // 공의 x 위치를 패닝 각도에 맵핑하기
  // -1.0 (좌) 과 1.0 (우) 사이
=======
  // map the ball's x location to a panning degree
  // between -1.0 (left) and 1.0 (right)
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  let panning = map(ball.x, 0, width, -1.0, 1.0);
  soundFile.pan(panning);
  soundFile.play();
}
