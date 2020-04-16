/*
 * @name 正弦波
 * @description 渲染一个简单的正弦波。
 * 作者：Daniel Shiffman
 */

let xspacing = 16; // 每个水平位置的距离
let w; // 波的宽度
let theta = 0.0; // 初始角度为 0
let amplitude = 75.0; // 波的高度
let period = 500.0; // 波在重复前的像素个数
let dx; // x 的增量
let yvalues; // 保存波的高度的数组

function setup() {
  createCanvas(710, 400);
  w = width + 16;
  dx = (TWO_PI / period) * xspacing;
  yvalues = new Array(floor(w / xspacing));
}

function draw() {
  background(0);
  calcWave();
  renderWave();
}

function calcWave() {
  // theta 增量（尝试赋予 ‘角速度’ 不同的数值）
  theta += 0.02;

  // 对于每一个 x 值，使用正弦函数计算 y 值
  let x = theta;
  for (let i = 0; i < yvalues.length; i++) {
    yvalues[i] = sin(x) * amplitude;
    x += dx;
  }
}

function renderWave() {
  noStroke();
  fill(255);
  // 在波上的每个位置画椭圆
  for (let x = 0; x < yvalues.length; x++) {
    ellipse(x * xspacing, height / 2 + yvalues[x], 16, 16);
  }
}
