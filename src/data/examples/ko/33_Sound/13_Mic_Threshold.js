/**
<<<<<<< HEAD
 * @name 마이크 임계값
 * @description <p>입력된 오디오의 볼륨이 임계값을 초과하면
 * 특정 이벤트(이 경우, 사각형 그리기)가 발생합니다.</p>
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound 라이브러리</a>를 추가해야 되며, 
 * <a href="https://github.com/processing/p5.js/wiki/Local-server">로컬 서버</a>를 작동시켜야 합니다.</span></em></p>
 */
// 다니엘 쉬프만(Daniel Shiffman)저 Learning Processing을 적용
=======
 * @name Mic Threshold
 * @description <p>Trigger an event (draw a rectangle) when the Audio Input
 * volume surpasses a threshold.</p>
 * <p><em><span class="small"> To run this example locally, you will need the
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound library</a>
 * and a running <a href="https://github.com/processing/p5.js/wiki/Local-server">local server</a>.</span></em></p>
 */
// Adapted from Learning Processing, Daniel Shiffman
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
// learningprocessing.com
let input;
let analyzer;

function setup() {
  createCanvas(710, 200);
  background(255);

<<<<<<< HEAD
  // 오디오 입력 생성하기
=======
  // Create an Audio input
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  input = new p5.AudioIn();

  input.start();
}

function draw() {
<<<<<<< HEAD
  // 전체 볼륨(0과 1.0 사이) 받아오기
  let volume = input.getLevel();

  // 만약 볼륨 > 0.1 이라면, 임의의 위치에 사각형 한 개가 그려집니다.
  // 볼륨이 커질수록, 사각형도 커집니다.
=======
  // Get the overall volume (between 0 and 1.0)
  let volume = input.getLevel();

  // If the volume > 0.1,  a rect is drawn at a random location.
  // The louder the volume, the larger the rectangle.
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  let threshold = 0.1;
  if (volume > threshold) {
    stroke(0);
    fill(0, 100);
    rect(random(40, width), random(height), volume * 50, volume * 50);
  }

<<<<<<< HEAD
  // 전체 볼륨 범위를 막대 그래프로 나타내고 임계값의 위치에는 선 하나 긋기
=======
  // Graph the overall potential volume, w/ a line at the threshold
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  let y = map(volume, 0, 1, height, 0);
  let ythreshold = map(threshold, 0, 1, height, 0);

  noStroke();
  fill(175);
  rect(0, 0, 20, height);
<<<<<<< HEAD
  // 그 다음, 볼륨값을 보여주는 검정 사각형을 그래프 위에 그리기
=======
  // Then draw a rectangle on the graph, sized according to volume
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  fill(0);
  rect(0, y, 20, y);
  stroke(0);
  line(0, ythreshold, 19, ythreshold);
}
