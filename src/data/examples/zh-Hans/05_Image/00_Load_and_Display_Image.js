/*
 * @name 加载(Load)和显示(Display)图像
 * @description 图像可以以原图大小或自定义大小被加载和显示。
 * <p><em><span class="small">要在本地运行此范例，您需要一个图像文件，并运行在<a href="https://github.com/processing/p5.js/wiki/Local-server">
 * 本地伺服器</a>上。</span></em></p>

 */
let img; // 声明变量 'img'

function setup() {
  createCanvas(720, 400);
  img = loadImage('assets/moonwalk.jpg'); // 加载图像
}

function draw() {
  // 在坐标(0, 0)，显示原图大小的图像 
  image(img, 0, 0);
  // 在坐标(0, 高度/2)，显示一半原图大小的图像
  image(img, 0, height / 2, img.width / 2, img.height / 2);
}
