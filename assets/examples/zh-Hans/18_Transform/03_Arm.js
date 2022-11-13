/*
 * @name 手臂
 * @description 此示例使用变换矩阵创建
 * 一只手臂。 每一段的角度都由
 * 鼠标在画布上的位置控制。 应用于第一段变换方式
 * 也适用于第二段因为它们在同一个 push()和pop()
 * 矩阵组中。
 */

let x, y;
let angle1 = 0.0;
let angle2 = 0.0;
let segLength = 100;

function setup() {
  createCanvas(720, 400);
  strokeWeight(30);

  //用半透明的白色划线
  stroke(255, 160);

  //将手臂的 "肩膀 "放在画布的中心。
  x = width * 0.5;
  y = height * 0.5;
}

function draw() {
  background(0);

  //根据鼠标的位置来改变片段的角度
  angle1 = (mouseX / float(width) - 0.5) * -TWO_PI;
  angle2 = (mouseY / float(height) - 0.5) * PI;

  //使用push和pop来 "包含 "这些变换。请注意
  // 即使我们使用一个自定义函数来画段。
  // 变换仍然会累积
  push();
  segment(x, y, angle1);
  segment(segLength, 0, angle2);
  pop();
}

//一个用于绘制分段的自定义函数。
function segment(x, y, a) {
  translate(x, y);
  rotate(a);
  line(0, 0, segLength, 0);
}
