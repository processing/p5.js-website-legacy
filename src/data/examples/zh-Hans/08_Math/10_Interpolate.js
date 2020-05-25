/*
 * @name 线性插值
 * @frame 720, 400
 * @description 在屏幕上移动鼠标，圆会跟着移动。
 * 在动画绘制的每一帧之间，lerp() 函数会使圆从其当前位置向光标移动一部分距离（0.05）。
 * 这和在 Input 中的 <a href ="https://p5js.org/zh-Hans/examples/input-easing.html">Easing</a> 范例一样，只是使用了 lerp() 函数。
 */

let x = 0;
let y = 0;

function setup() {
  createCanvas(720, 400);
  noStroke();
}

function draw() {
  background(51);

  // lerp() 函数计算在特定增量下两个数值之间的数字
  // amt 参数为两个值之间的插值量
  // 0.0 为第一个值，0.1 为非常接近第一个值，0.5 为两者之间，等等

  // 这里我们每帧移动 5% 至鼠标的距离
  x = lerp(x, mouseX, 0.05);
  y = lerp(y, mouseY, 0.05);

  fill(255);
  stroke(255);
  ellipse(x, y, 66, 66);
}
