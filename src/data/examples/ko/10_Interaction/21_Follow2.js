/*
 * @name 따라다니기 2
 * @frame 710,400
 * @description 팔 형상의 두 선분이 마우스 커서의 위치를 따라다닙니다.
 * 선분들 사이의 상대 각도는 atan2()로, 그 위치는 sin()과 cos()로 계산됩니다.
 * 이 예제는 키스 피터스(Keith Peters)가 제작한 코드를 기반으로 합니다.
 */
let x = [0, 0],
  y = [0, 0],
  segLength = 50;

function setup() {
  createCanvas(710, 400);
  strokeWeight(20.0);
  stroke(255, 100);
}

function draw() {
  background(0);
  dragSegment(0, mouseX, mouseY);
  dragSegment(1, x[0], y[0]);
}

function dragSegment(i, xin, yin) {
  const dx = xin - x[i];
  const dy = yin - y[i];
  const angle = atan2(dy, dx);
  x[i] = xin - cos(angle) * segLength;
  y[i] = yin - sin(angle) * segLength;
  segment(x[i], y[i], angle);
}

function segment(x, y, a) {
  push();
  translate(x, y);
  rotate(a);
  line(0, 0, segLength, 0);
  pop();
}
