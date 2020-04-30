/*
 * @name 混合光
 * @frame 710,400 (optional)
 * @description 展示一个有三种不同光的盒子。
 */
function setup() {
  createCanvas(710, 400, WEBGL);
  noStroke();
}

function draw() {
  background(0);

  // 右侧：橘色点光源
  pointLight(150, 100, 0, 500, 0, 200);

  // 左侧：蓝色定向光
  directionalLight(0, 102, 255, -1, 0, 0);

  // 上方：黄色聚光
  pointLight(255, 255, 109, 0, 0, 300);

  rotateY(map(mouseX, 0, width, 0, PI));
  rotateX(map(mouseY, 0, height, 0, PI));
  box(200);
}
