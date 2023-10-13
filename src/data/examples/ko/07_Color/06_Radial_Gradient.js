/*
 * @name 방사형 그래디언트
 * @description 동심원을 그려 한 색상이 다른 색상으로 퍼지는 듯한 효과를 만듭니다.
 */
let dim;

function setup() {
  createCanvas(710, 400);
  dim = width / 2;
  background(0);
  colorMode(HSB, 360, 100, 100);
  noStroke();
  ellipseMode(RADIUS);
  frameRate(1);
}

function draw() {
  background(0);
  for (let x = 0; x <= width; x += dim) {
    drawGradient(x, height / 2);
  }
}

function drawGradient(x, y) {
  let radius = dim / 2;
  let h = random(0, 360);
  for (let r = radius; r > 0; --r) {
    fill(h, 90, 90);
    ellipse(x, y, r, r);
    h = (h + 1) % 360;
  }
}
