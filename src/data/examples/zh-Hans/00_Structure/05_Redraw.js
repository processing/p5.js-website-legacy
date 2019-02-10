/*
 * @name Redraw
 * @description redraw() 函数使 draw() 执行一次。在这个例子中，draw() 将在每次点击鼠标时执行一次。
 */

let y;

// 程序开始时，setup() 函数中的语句执行一次。
function setup() {
  createCanvas(720, 400);
  stroke(255);
  noLoop();
  y = height * 0.5;
}

// draw() 中的语句一直执行到程序停止为止。每个语句都按顺序执行，并且在读取最后一行之后，将再次执行第一行。.
function draw() {
  background(0);
  y = y - 4;
  if (y < 0) {
    y = height;
  }
  line(0, y, width, y);
}

function mousePressed() {
  redraw();
}
