/*
 * @name 基本形状
 * @description 基本形状的原始函数包括 triangle()、
 * rect(), quad()、ellipse() 和 arc()。 方块是通过 rect() 绘制，
 * 圆形是通过 ellipse() 来绘制。每个功能都需要一些参数来确定形状的位置和大小。
 */
function setup() {
  // 将屏幕设置为720像素宽，400像素高
  createCanvas(720, 400);
  background(0);
  noStroke();

  fill(204);
  triangle(18, 18, 18, 360, 81, 360);

  fill(102);
  rect(81, 81, 63, 63);

  fill(204);
  quad(189, 18, 216, 18, 216, 360, 144, 360);

  fill(255);
  ellipse(252, 144, 72, 72);

  fill(204);
  triangle(288, 18, 351, 360, 288, 360);

  fill(255);
  arc(479, 300, 280, 280, PI, TWO_PI);
}
