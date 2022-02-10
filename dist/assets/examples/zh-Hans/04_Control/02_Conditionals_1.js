/*
 * @name 条件 1
 * @description 条件就像问题。
 * 如果问题的答案为真值，它们允许程序决定采取一个动作;如果问题的答案为假值，则允许程序执行另一个动作。
 * 程序中提出的问题始终是逻辑或关系语句。例如，如果变量 'i' 等于零，则绘制一条线。
 */
function setup() {
  createCanvas(720, 360);
  background(0);

  for (let i = 10; i < width; i += 10) {
    // If 'i' divides by 20 with no remainder draw the first line
    // else draw the second line
    if (i % 20 === 0) {
      stroke(255);
      line(i, 80, i, height / 2);
    } else {
      stroke(153);
      line(i, 20, i, 180);
    }
  }
}
