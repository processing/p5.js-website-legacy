/*
 *@name 재귀 함수
 *@description 재귀 함수는 자기 자신을 다시 호출하는 함수를 말합니다.
 * drawCircle()함수가 블록 말미에 그 자신을 다시 호출하는 것을 볼 수 있습니다.
 * 이 경우, drawCircle()함수의 변수인 "level"의 값이 1과 같아질 때까지 계속해서 재호출됩니다.
 */

function setup() {
  createCanvas(720, 400);
  noStroke();
  noLoop();
}

function draw() {
  drawCircle(width / 2, 280, 6);
}

function drawCircle(x, radius, level) {
  const tt = (126 * level) / 4.0;
  fill(tt);
  ellipse(x, height / 2, radius * 2, radius * 2);
  if (level > 1) {
    level = level - 1;
    drawCircle(x - radius / 2, radius / 2, level);
    drawCircle(x + radius / 2, radius / 2, level);
  }
}
