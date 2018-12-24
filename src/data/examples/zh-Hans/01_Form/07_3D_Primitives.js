/*
 * @name 基本 3D 形状
 * @frame 720,400 (可选的)
 * @description 将数学上的 3D 形体放置在合成空间中。
 * box() 和 sphere() 函数至少使用一个参数来指定它们的大小。
 * 这些形状的位置是由 translate() 函数来定义的。
 */
function setup() {
  createCanvas(710, 400, WEBGL);
}

function draw() {
  background(100);

  noStroke();
  fill(50);
  push();
  translate(-275, 175);
  rotateY(1.25);
  rotateX(-0.9);
  box(100);
  pop();

  noFill();
  stroke(255);
  push();
  translate(500, height * 0.35, -200);
  sphere(300);
  pop();
}
