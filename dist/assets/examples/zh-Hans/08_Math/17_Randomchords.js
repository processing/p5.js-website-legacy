/*
 * @name 随机弦
 * @description 累积一个圆的随机弦。每个弦都是半透明的，所以它们累积起来会造成阴影球面的错觉。
 * 贡献于 Aatish Bhatia，灵感来源于 <a href ="http://inconvergent.net/">Anders Hoff</a>
 */
function setup() {
  createCanvas(400, 400);
  background(255, 255, 255);

  // 使用透明度值的半透明外形线
  stroke(0, 0, 0, 15);
}

function draw() {
  // 每一帧绘制两个随机弦
  randomChord();
  randomChord();
}

function randomChord() {
  // 在圆上随机找一个点
  let angle1 = random(0, 2 * PI);
  let xpos1 = 200 + 200 * cos(angle1);
  let ypos1 = 200 + 200 * sin(angle1);

  // 在圆上随机找另一个点
  let angle2 = random(0, 2 * PI);
  let xpos2 = 200 + 200 * cos(angle2);
  let ypos2 = 200 + 200 * sin(angle2);

  // 在两点之间绘制一条直线
  line(xpos1, ypos1, xpos2, ypos2);
}
