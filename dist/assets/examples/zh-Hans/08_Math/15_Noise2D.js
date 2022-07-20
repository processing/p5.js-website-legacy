/*
 * @name 二维噪声 (Noise2D)
 * @frame 710,400 (optional)
 * @description 使用不同参数创建一个二维噪声。
 *
 */

let noiseVal;
let noiseScale = 0.02;

function setup() {
  createCanvas(640, 360);
}

function draw() {
  background(0);
  // 绘制左半边图像
  for (let y = 0; y < height - 30; y++) {
    for (let x = 0; x < width / 2; x++) {
      // 像素所使用的八度数和衰退因数的 noiceDetail
      noiseDetail(2, 0.2);
      noiseVal = noise((mouseX + x) * noiseScale, (mouseY + y) * noiseScale);
      stroke(noiseVal * 255);
      point(x, y);
    }
  }
  // 绘制右半边图像
  for (let y = 0; y < height - 30; y++) {
    for (let x = width / 2; x < width; x++) {
      // 像素所使用的八度数和衰退因数的 noiceDetail
      noiseDetail(5, 0.5);
      noiseVal = noise((mouseX + x) * noiseScale, (mouseY + y) * noiseScale);
      stroke(noiseVal * 255);
      point(x, y);
    }
  }
  // 显示左右两分区的详细信息
  textSize(18);
  fill(255, 255, 255);
  text('Noice2D with 2 octaves and 0.2 falloff', 10, 350);
  text('Noice2D with 1 octaves and 0.7 falloff', 330, 350);
}
