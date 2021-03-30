/*
 *@name 그 외 함수들
 *@description 각 drawTarget()함수로 과녁판 형상의 도형 여러개를 쉽게 만들 수 있습니다.
 *호출된 drawTarget()함수들은 각기 다른 과녁판 도형의 위치, 크기 그리고 고리 개수를 지정합니다.
 */

function setup() {
  createCanvas(720, 400);
  background(51);
  noStroke();
  noLoop();
}

function draw() {
  drawTarget(width * 0.25, height * 0.4, 200, 4);
  drawTarget(width * 0.5, height * 0.5, 300, 10);
  drawTarget(width * 0.75, height * 0.3, 120, 6);
}

function drawTarget(xloc, yloc, size, num) {
  const grayvalues = 255 / num;
  const steps = size / num;
  for (let i = 0; i < num; i++) {
    fill(i * grayvalues);
    ellipse(xloc, yloc, size - i * steps, size - i * steps);
  }
}
