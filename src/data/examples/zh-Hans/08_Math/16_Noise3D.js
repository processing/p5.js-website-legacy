/*
 * @name 三维噪声 (Noise3D)
 * @frame 710,400 (optional)
 * @description 使用三维噪声创建简单的动画纹理。
 */

let noiseVal;
// x 增加 0.01
let x_increment = 0.01;
// 每一个 draw() 的周期，z 增加 0.02
let z_increment = 0.02;

// 偏移值
let z_off, y_off, x_off;

function setup() {
  // 创建画布
  createCanvas(640, 360);
  // 定义每一秒应该显示的影格数
  frameRate(20);
  // 初始 z_off
  z_off = 0;
}

function draw() {
  x_off = 0;
  y_off = 0;
  // 设置黑色背景
  background(0);
  // 调整噪声细节
  noiseDetail(8, 0.65);

  // 对于每一个 x,y 计算噪声值
  for (let y = 0; y < height; y++) {
    x_off += x_increment;
    y_off = 0;

    for (let x = 0; x < width; x++) {
      // 计算和绘制每一个像素
      noiseVal = noise(x_off, y_off, z_off);
      stroke(noiseVal * 255);
      y_off += x_increment;
      point(x, y);
    }
  }

  z_off += z_increment;
}
