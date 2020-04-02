/*
 * @name Alpha Mask
 * @description 在图像上加载一个蒙版来改变图像中不同位置的透明度。
 * 通过拍p5.Image 中的mask() 函数来混合两张图像（图像和蒙版）。
 * <p><em><span class="small">要在本地运行此范例，您需要一个图像文件，并运行在<a href="https://github.com/processing/p5.js/wiki/Local-server">
 * 本地伺服器</a>上。</span></em></p>
 */
let img;
let imgMask;

function preload() {
  // 加载图像及图像蒙版
  img = loadImage('assets/moonwalk.jpg');
  imgMask = loadImage('assets/mask.png');
}

function setup() {
  createCanvas(720, 400);
  // maske()函数将图像蒙版覆盖在图像上
  img.mask(imgMask);
  imageMode(CENTER);
}

function draw() {
  background(0, 102, 153);
  image(img, width / 2, height / 2);
  image(img, mouseX, mouseY);
}
