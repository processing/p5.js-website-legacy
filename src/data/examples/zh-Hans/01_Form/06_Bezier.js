/*
 * @name Bezier
 * @description bezier() 函数的前两个参数指定曲线中的第一个点，后两个参数指定最后一个点。
 * 中间的参数设置定义曲线形状的控制点。
 */
function setup() {
  createCanvas(720, 400);
  stroke(255);
  noFill();
}

function draw() {
  background(0);
  for (let i = 0; i < 200; i += 20) {
    bezier(
      mouseX - i / 2.0,
      40 + i,
      410,
      20,
      440,
      300,
      240 - i / 16.0,
      300 + i / 8.0
    );
  }
}
