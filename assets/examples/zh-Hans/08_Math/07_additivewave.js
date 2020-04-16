/*
 * @name 加性波
 * @description 通过相加两个波来绘制一个更复杂的波。
 * 作者：Daniel Shiffman
 */
let xspacing = 8; // 每个水平位置的距离
let w; // 波的宽度
let maxwaves = 4; // 相加的波的总数

let theta = 0.0;
let amplitude = new Array(maxwaves); // 波的高度
// x 的增量值，根据周期和水平位置距离来计算
let dx = new Array(maxwaves);
// 用数组保存波的高度（不完全需要）
let yvalues;

function setup() {
  createCanvas(710, 400);
  frameRate(30);
  colorMode(RGB, 255, 255, 255, 100);
  w = width + 16;

  for (let i = 0; i < maxwaves; i++) {
    amplitude[i] = random(10, 30);
    let period = random(100, 300); // 波在重复前的像素个数
    dx[i] = (TWO_PI / period) * xspacing;
  }

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

  // 所有高度设为 0
  for (let i = 0; i < yvalues.length; i++) {
    yvalues[i] = 0;
  }

  // 累积波的高度
  for (let j = 0; j < maxwaves; j++) {
    let x = theta;
    for (let i = 0; i < yvalues.length; i++) {
      // 正弦余弦交替
      if (j % 2 === 0) yvalues[i] += sin(x) * amplitude[j];
      else yvalues[i] += cos(x) * amplitude[j];
      x += dx[j];
    }
  }
}

function renderWave() {
  // 在波上的每个位置画椭圆
  noStroke();
  fill(255, 50);
  ellipseMode(CENTER);
  for (let x = 0; x < yvalues.length; x++) {
    ellipse(x * xspacing, width / 2 + yvalues[x], 16, 16);
  }
}
