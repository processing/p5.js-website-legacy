/*
 * @name 亮度
 * @description 作者 Dan Shiffman。
 * 此程序通过计算每个像素距离光标的距离调整图像的局部亮度。
 * <p><em><span class="small">
 * 要在本地运行此范例，您需要至少一个图像文件，并运行在
 * <a href="https://github.com/processing/p5.js/wiki/Local-server">
 * 本地伺服器 </a>上。</span></em></p>
 */
let img;

function preload() {
  img = loadImage('assets/moonwalk.jpg');
}

function setup() {
  createCanvas(720, 200);
  pixelDensity(1);
  img.loadPixels();
  loadPixels();
}

function draw() {
  for (let x = 0; x < img.width; x++) {
    for (let y = 0; y < img.height; y++) {
      // 通过 2D 网格计算1D位置
      let loc = (x + y * img.width) * 4;
      // 从图像里获取 R,G,B 数值
      let r, g, b;
      r = img.pixels[loc];
      // 根据距离光标的距离计算亮度改变的量
      let maxdist = 50;
      let d = dist(x, y, mouseX, mouseY);
      let adjustbrightness = (255 * (maxdist - d)) / maxdist;
      r += adjustbrightness;
      // 限制 RGB 以确保它们在 0-255 的颜色范围内
      r = constrain(r, 0, 255);
      // 创建一个新颜色，并在窗口里设置像素
      //color c = color(r, g, b);
      let pixloc = (y * width + x) * 4;
      pixels[pixloc] = r;
      pixels[pixloc + 1] = r;
      pixels[pixloc + 2] = r;
      pixels[pixloc + 3] = 255;
    }
  }
  updatePixels();
}
