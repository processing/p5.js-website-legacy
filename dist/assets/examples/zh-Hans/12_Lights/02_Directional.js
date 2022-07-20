/*
 * @name 定向光
 * @frame 710,400
 * @description 移动鼠标改变光线方向。
 * 定向光从一个方向打来，垂直打在一个表面上时会更强，而以平缓的角度打则会更弱。
 * 击打在表面上后，定向光会在所有方向上散射。
 */
const radius = 200;

function setup() {
  createCanvas(710, 400, WEBGL);
  noStroke();
  fill(200);
}

function draw() {
  noStroke();
  background(0);
  const dirY = (mouseY / height - 0.5) * 4;
  const dirX = (mouseX / width - 0.5) * 4;
  directionalLight(204, 204, 204, dirX, dirY, 1);
  translate(-1.5 * radius, 0, 0);
  sphere(radius);
  translate(3 * radius, 0, 0);
  sphere(radius);
}
