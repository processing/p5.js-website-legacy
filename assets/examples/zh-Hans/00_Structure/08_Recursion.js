/*
 *@name 递归
 *@description 递归的一个演示，递归指的的是函数可以调用自身。
 * 注意 drawCircle() 函数是如何在代码块的末尾调用它自身的。
 * 它将继续这样执行直到变量 “level” 等于1。
 */

function setup() {
  createCanvas(720, 560);
  noStroke();
  noLoop();
}

function draw() {
  drawCircle(width / 2, 280, 6);
}

function drawCircle(x, radius, level) {
  let tt = (126 * level) / 4.0;
  fill(tt);
  ellipse(x, height / 2, radius * 2, radius * 2);
  if (level > 1) {
    level = level - 1;
    drawCircle(x - radius / 2, radius / 2, level);
    drawCircle(x + radius / 2, radius / 2, level);
  }
}
