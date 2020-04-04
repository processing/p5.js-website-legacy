/*
 * @name 透明度
 * @description 左右移动指针（光标）来改变图像位置
 * 此程序为一张图像叠加在另一张上，通过tint() 函数来改变它的透明度值(alpha value)。
 * <p><em><span class="small">要在本地运行此范例，您需要一个图像文件，并运行在<a href="https://github.com/processing/p5.js/wiki/Local-server">
 * 本地伺服器</a>上。</span></em></p>
 */
let img;
let offset = 0;
let easing = 0.05;

function setup() {
  createCanvas(720, 400);
  img = loadImage('assets/moonwalk.jpg'); // 加载图像
}

function draw() {
  image(img, 0, 0); // 完全不透明
  let dx = mouseX - img.width / 2 - offset;
  offset += dx * easing;
  tint(255, 127); // 半透明
  image(img, offset, 0);
}
