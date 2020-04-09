/*
 * @name 一维噪声 (Noise1D)
 * @description 调用一维柏林噪声来指定位置。
 */
let xoff = 0.0;
let xincrement = 0.01;

function setup() {
  createCanvas(710, 400);
  background(0);
  noStroke();
}

function draw() {
  // 创建一个透明度 (alpha) 混合背景
  fill(0, 10);
  rect(0, 0, width, height);

  //let n = random(0,width);  // 尝试用这一行代替 noise()

  // 基于 xoff 和 scale 得到一个噪声值
  // 并根据窗口宽度进行缩放
  let n = noise(xoff) * width;

  // 每一轮增加 xoff
  xoff += xincrement;

  // 绘制由柏林噪声产生的数值的椭圆
  fill(200);
  ellipse(n, height / 2, 64, 64);
}
