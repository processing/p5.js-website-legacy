/*
 * @name 变量范围
 * @description 变量具有全局或函数“范围”。
 * 例如，在 setup() 或 draw() 函数中声明的变量只能在该函数内使用。
 * 全局变量，在 setup() 和 draw() 之外声明的变量，可以在程序中的任何地方使用。
 * 如果声明的函数变量与全局变量同名，那么程序将使用当前范围内所声明的函数变量进行计算。
 */
let a = 80; // 创建一个全局变量"a"

function setup() {
  createCanvas(720, 400);
  background(0);
  stroke(255);
  noLoop();
}

function draw() {
  // 使用全局变量 “a” 绘制一条线
  line(a, 0, a, height);

  for (let a = 120; a < 200; a += 3) {
    line(a, 0, a, height);
  }

  let a = 300;
  // 使用新的本地变量 “a” 画一条线
  line(a, 0, a, height);

  // 调用自定义函数 drawAnotherLine()
  drawAnotherLine();

  // 调用自定义函数 drawYetAnotherLine()
  drawYetAnotherLine();
}

function drawAnotherLine() {
  // 在此函数的本地创建一个新变量 “a”
  let a = 320;
  // 使用本地变量 “a” 画一条线
  line(a, 0, a, height);
}

function drawYetAnotherLine() {
  // 因为没有设置新的本地变量 “a”，所以该线使用设置为值 20 的原始全局变量 “a” 进行绘制
  line(a + 3, 0, a + 3, height);
}
