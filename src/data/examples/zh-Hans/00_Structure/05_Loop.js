/*
 * @name Loop
 * @description draw() 函数中的代码从上到下连续运行，直到程序停止。
 */
let y = 100;

// 程序开始时，setup() 函数中的语句执行一次。
function setup() {
  createCanvas(720, 400); // createCanvas 必须是第一条语句
  stroke(255); // 线条绘制颜色设置为白色
  frameRate(30);
}
// draw() 中的语句一直执行到程序停止为止。每个语句都按顺序执行，并且在读取最后一行之后，将再次执行第一行。
function draw() {
  background(0); // 将背景设置为黑色
  y = y - 1;
  if (y < 0) {
    y = height;
  }
  line(0, y, width, y);
}
