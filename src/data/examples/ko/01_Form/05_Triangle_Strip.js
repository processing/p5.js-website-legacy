/*
 * @name 삼각형 고리
 * @description 이라 그린버그(Ira Greenberg) 제작 예제. vertex()함수와
 * beginShape(TRIANGLE_STRIP) 모드를 이용하여 닫힌 고리를 하나 생성하세요. 
 * outsideRadius와 insideRadius 변수를 이용하여 각 고리의 지름(radius)을 조정할 수 있습니다.
 */
let x;
let y;
let outsideRadius = 150;
let insideRadius = 100;

function setup() {
  createCanvas(720, 400);
  background(204);
  x = width / 2;
  y = height / 2;
}

function draw() {
  background(204);

  let numPoints = int(map(mouseX, 0, width, 6, 60));
  let angle = 0;
  let angleStep = 180.0 / numPoints;

  beginShape(TRIANGLE_STRIP);
  for (let i = 0; i <= numPoints; i++) {
    let px = x + cos(radians(angle)) * outsideRadius;
    let py = y + sin(radians(angle)) * outsideRadius;
    angle += angleStep;
    vertex(px, py);
    px = x + cos(radians(angle)) * insideRadius;
    py = y + sin(radians(angle)) * insideRadius;
    vertex(px, py);
    angle += angleStep;
  }
  endShape();
}
