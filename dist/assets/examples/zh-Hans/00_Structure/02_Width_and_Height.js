/*
 * @name Width 和 Height
 * @description 'width'（宽度）和 'height'（高度）变量包含 createCanvas() 函数中定义的显示窗口的宽度和高度。
 */
function setup() {
  createCanvas(720, 400);
}

function draw() {
  background(127);
  noStroke();
  for (let i = 0; i < height; i += 20) {
    fill(129, 206, 15);
    rect(0, i, width, 10);
    fill(255);
    rect(i, 0, 10, height);
  }
}
