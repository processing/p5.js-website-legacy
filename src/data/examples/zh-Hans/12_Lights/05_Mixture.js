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

  // 环境光
   ambientLight(0, 255/4, 0);

  // 设置光的位置，可将坐标想成如下：
  // -宽度/2,-高度/2 -------- 宽度/2,-高度/2
  //              |            |
  //              |     0,0    |
  //              |            |
  // -宽度/2,高度/2--------宽度/2,高度/2

  // 左侧：蓝色定向光
  directionalLight(0, 0, 255, -1, 0, 0);

  // 计算由中心点至 mouseX 的距离
  let lightX = mouseX - width / 2;
  let lightY = mouseY - height / 2;

  // 红色聚光
  // 光的轴位置：lightX, lightY, 500
  // 光的轴方向：0, 0, -1
  spotLight(255, 0, 0, lightX, lightY, 500, 0, 0, -1);

  // 绕 X 轴旋转
  rotateX(-PI/4);
  // 绕 Y 轴旋转
  rotateY(PI/4);

  // 将方块放置在 (0, 0, 0)，并设大小为 100
  box(100);
}
