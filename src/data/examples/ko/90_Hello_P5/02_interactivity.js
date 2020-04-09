/*
 * @name 인터랙티비티 1
 * @frame 720,425
 * @description 원을 클릭하면 색상이 바뀝니다.
 * <p><em><span class="small"> 로컬 프로젝트에서 이 예제를 실행하려면, 
 * <a href="http://p5js.org/reference/#/libraries/p5.dom">p5.dom 라이브러리</a>.
 * </em>를 추가해야 됩니다.</p>
 */

// 빨강(r), 초록(g), 파랑(b) 색상값들
let r, g, b;

function setup() {
  createCanvas(720, 400);
  // 임의의 색상 고르기
  r = random(255);
  g = random(255);
  b = random(255);
}

function draw() {
  background(127);
  // 원 그리기
  strokeWeight(2);
  stroke(r, g, b);
  fill(r, g, b, 127);
  ellipse(360, 200, 200, 200);
}

// 사용자가 마우스를 클릭했을 때,
function mousePressed() {
  // 마우스가 원의 안쪽에 있는지 확인하기
  let d = dist(mouseX, mouseY, 360, 200);
  if (d < 100) {
    // 새로운 임의의 색상 고르기
    r = random(255);
    g = random(255);
    b = random(255);
  }
}
