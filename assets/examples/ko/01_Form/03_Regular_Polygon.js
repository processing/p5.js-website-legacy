/*
 * @name 정다각형
 * @description 가장 좋아하는 정다각형이 있나요? 오각형? 육각형? 칠각형? 아니면, 이십각형은요?
 * 이 예제에서 소개하는 polygon()함수는 그 어떠한 정다각형도 그릴 수 있습니다.
 * draw()함수 내에 호출된 polygon() 안에 다양한 숫자를 넣어 탐구해보세요.
 */
function setup() {
  createCanvas(720, 400);
}

function draw() {
  background(102);

  push();
  translate(width * 0.2, height * 0.5);
  rotate(frameCount / 200.0);
  polygon(0, 0, 82, 3);
  pop();

  push();
  translate(width * 0.5, height * 0.5);
  rotate(frameCount / 50.0);
  polygon(0, 0, 80, 20);
  pop();

  push();
  translate(width * 0.8, height * 0.5);
  rotate(frameCount / -100.0);
  polygon(0, 0, 70, 7);
  pop();
}

function polygon(x, y, radius, npoints) {
  let angle = TWO_PI / npoints;
  beginShape();
  for (let a = 0; a < TWO_PI; a += angle) {
    let sx = x + cos(a) * radius;
    let sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
