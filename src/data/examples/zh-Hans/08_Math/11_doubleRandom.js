/*
 * @name 双重随机
 * @frame 720,400 (optional)
 * @description 调用两个 random() 函数和一个 point() 函数来绘制一个不规则的锯齿线。
 * 作者：Ira Greenberg
 */
let totalPts = 300;
let steps = totalPts + 1;

function setup() {
  createCanvas(710, 400);
  stroke(255);
  frameRate(1);
}

function draw() {
  background(0);
  let rand = 0;
  for (let i = 1; i < steps; i++) {
    point((width / steps) * i, height / 2 + random(-rand, rand));
    rand += random(-5, 5);
  }
}