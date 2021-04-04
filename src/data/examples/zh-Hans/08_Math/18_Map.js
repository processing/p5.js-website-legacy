/*
 * @name 映射 (Map)
 * @description 调用 map() 函数将任意数值缩放至一个对于现在程序更有用的新数值。
 * 例如，使用鼠标的位置来控制形状的大小或颜色。
 * 此范例中，鼠标的 x 坐标（ 0-360 之间的数字）将被缩放为新数值，用于设定圆的颜色和大小。
 */
function setup() {
  createCanvas(720, 400);
  noStroke();
}

function draw() {
  background(0);
  // 将 mouseX 的数值从 0-720 缩放至 0-175 的范围内
  let c = map(mouseX, 0, width, 0, 175);
  // 将 mouseX 的数值从 0-720 to 缩放至 40-300 的范围内
  let d = map(mouseX, 0, width, 40, 300);
  fill(255, c, 0);
  ellipse(width/2, height/2, d, d);
}
