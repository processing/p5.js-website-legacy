/*
 * @name 跟随 2
 * @frame 710,400
 * @description 跟随光标移动的两段式手臂。
 * 两个手臂之间的相对角度是用 atan2() 计算的，位置是用 sin() 和 cos() 计算的。
 * 基于 Keith Peters 的代码。
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
