/*
 * @name 条件 2
 * @description 我们通过添加关键字 “else” 来扩展前一个示例中的条件语言。
 * 这允许条件连续提出两个或更多个问题，每个问题都有不同的操作。
 */
function setup() {
  createCanvas(720, 360);
  background(0);

  for (let i = 2; i < width - 2; i += 4) {
    // 如果 'i' 除以 20 而没有余数
    if (i % 20 === 0) {
      stroke(255);
      line(i, 80, i, height / 2);
      // 如果 'i' 除以 10 而没有余数
    } else if (i % 10 === 0) {
      stroke(153);
      line(i, 20, i, 180);
      // 如果上述两个条件都不满足，则绘制这条线
    } else {
      stroke(102);
      line(i, height / 2, i, height - 20);
    }
  }
}
