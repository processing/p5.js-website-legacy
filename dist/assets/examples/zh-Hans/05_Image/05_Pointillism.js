/*
 * @name 点画(Pointillism)
 * @description 作者：Dan Shiffman。
 * 鼠标水平位置控制点的大小，由左到右对应由小到大的点。
 * 通过带有原图像素颜色的椭圆创建出一副简单的点画。
 * <p><em><span class="small">要在本地运行此范例，您需要一个图像文件，并运行在<a href="https://github.com/processing/p5.js/wiki/Local-server">
 * 本地伺服器</a>上。</span></em></p>
 */
// 声明变量 'img', 'smallPoint', 'largePoing'
let img;
let smallPoint, largePoint;

function preload() {
  // 加载图像
  img = loadImage('assets/moonwalk.jpg');
}

function setup() {
  createCanvas(720, 400);
  // 设置最小点宽度为 4，最大点宽度为 40
  smallPoint = 4;
  largePoint = 40;
  imageMode(CENTER);
  noStroke();
  // 设置背景颜色为白色
  background(255);
  img.loadPixels();
}

function draw() {
  // map() 函数根据鼠标水平位置，
  // 将其在 [0, 画布宽度] 的数值对应到 [最小点宽度, 最大点宽度] ([4,40]) 之中，
  // 对应的数值即为点的大小
  let pointillize = map(mouseX, 0, width, smallPoint, largePoint);
  // 随机生成坐标 (x, y)
  let x = floor(random(img.width));
  let y = floor(random(img.height));
  // 得到图像中坐标 (x, y) 的颜色
  let pix = img.get(x, y);
  // fill(灰度值，透明度值)
  fill(pix, 128);
  ellipse(x, y, pointillize, pointillize);
}
