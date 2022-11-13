/*
 * @name 平移
 * @description translate() 函数能够让所有的对象都能够在窗口的任意位置移动.
 * 第一个参数设置X轴的偏移量,第二个函数设置Y轴的偏移量. 这个例子展示了变化是如何累积的.
 *
 */

let x = 0;
let y = 0;
let dim = 80.0;

function setup() {
  createCanvas(720, 400);
  noStroke();
}

function draw() {
  background(102);
  // 通过增加x的值来实现动画效果.
  x = x + 0.8;
  // 如果该形状离开了画布，就重新设置位置。
  if (x > width + dim) {
    x = -dim;
  }

  // 尽管我们的矩形命令是以原点为中心画出形状的，但平移会将它移动到新的位置。
  // 中心在原点，但平移会将其移动到新的
  // X和Y的位置
  translate(x, height / 2 - dim / 2);
  fill(255);
  rect(-dim / 2, -dim / 2, dim, dim);

  // 变形累积。注意这个矩形的移动速度
  // 的速度是另一个的两倍，但它的X轴值是相同的
  // X轴值的参数
  translate(x, dim);
  fill(0);
  rect(-dim / 2, -dim / 2, dim, dim);
}
