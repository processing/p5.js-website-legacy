/*
 * @name 1D 마우스
 * @description 마우스를 좌우로 움직여 균형점을 이동해보세요. 
 * mouseX 변수로 사각형의 크기와 색상 모두를 조정할 수 있습니다.
 */
function setup() {
  createCanvas(720, 400);
  noStroke();
  rectMode(CENTER);
}

function draw() {
  background(230);

  let r1 = map(mouseX, 0, width, 0, height);
  let r2 = height - r1;

  fill(237, 34, 93, r1);
  rect(width / 2 + r1 / 2, height / 2, r1, r1);

  fill(237, 34, 93, r2);
  rect(width / 2 - r2 / 2, height / 2, r2, r2);
}
