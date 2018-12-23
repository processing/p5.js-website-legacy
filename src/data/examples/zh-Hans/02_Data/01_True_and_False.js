/*
 * @name True 和 False
 * @description 布尔变量只有两个可能的值: true 或者 false。
 * 使用控制语句与布尔值来确定程序的流程是很常见的。
 * 在这个范例中， 当布尔值 “b” 为 true 时，绘制垂直线，当布尔值 “b” 为 false 时，绘制水平线。
 */
function setup() {
  createCanvas(720, 400);
  background(0);
  stroke(255);

  let b = false;
  let d = 20;
  let middle = width / 2;

  for (let i = d; i <= width; i += d) {
    b = i < middle;

    if (b === true) {
      // 垂直线
      line(i, d, i, height - d);
    }

    if (b === false) {
      // 水平线
      line(middle, i - middle + d, width - d, i - middle + d);
    }
  }
}
