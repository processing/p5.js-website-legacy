/*
 * @name 인터랙티비티 2
 * @frame 720,425
 * @description 슬라이더를 움직이면 원의 색상이 바뀝니다.
 * 로컬 프로젝트에서 이 예제를 실행하려면, 
 * <a href="http://p5js.org/reference/#/libraries/p5.dom">p5.dom 라이브러리</a>
 * 를 추가해야 됩니다.
 */

// HTML 범위 슬라이더
let slider;

function setup() {
  createCanvas(720, 400);
  // 색조(H), 채도(S), 밝기(B)
  colorMode(HSB, 255);
  // 슬라이더의 범위를 0부터 255까지로, 그 시작값을 127로 설정하기
  slider = createSlider(0, 255, 127);
}

function draw() {
  background(127);
  strokeWeight(2);

  // 슬라이더에 따라 채도 설정하기
  stroke(slider.value(), 255, 255);
  fill(slider.value(), 255, 255, 127);
  ellipse(360, 200, 200, 200);
}