/*
 * @name Points 与 Lines
 * @description Points 与 lines 可用于绘制基本几何。
 * 更改变量 'd' 的值以缩放外形。这四个变量根据 'd' 的值设置位置。
 */
function setup() {
  let d = 70;
  let p1 = d;
  let p2 = p1 + d;
  let p3 = p2 + d;
  let p4 = p3 + d;

  // 将屏幕设置为720像素宽，400像素高
  createCanvas(720, 400);
  background(0);
  noSmooth();

  translate(140, 0);

  // 绘制灰色的方块
  stroke(153);
  line(p3, p3, p2, p3);
  line(p2, p3, p2, p2);
  line(p2, p2, p3, p2);
  line(p3, p2, p3, p3);

  // 绘制白色的点
  stroke(255);
  point(p1, p1);
  point(p1, p3);
  point(p2, p4);
  point(p3, p1);
  point(p4, p2);
  point(p4, p4);
}
