/*
 * @name 噪声波
 * @description 调用柏林噪声来产生波状图案。 
 * 作者：Daniel Shiffman
 */
let yoff = 0.0; // 柏林噪声的第二维度

function setup() {
  createCanvas(710, 400);
}

function draw() {
  background(51);

  fill(255);
  // 我们将从波点中绘制一个多边形
  beginShape();

  let xoff = 0; // 选项 1: 2D 噪声
  // let xoff = yoff; // 选项 2: 1D 噪声

  // 迭代所有水平像素
  for (let x = 0; x <= width; x += 10) {
    // 根据noise() 和 map() 函数计算一个 y 值

    // 选项 1: 2D 噪声
    let y = map(noise(xoff, yoff), 0, 1, 200, 300);

    // 选项 2: 1D 噪声
    // let y = map(noise(xoff), 0, 1, 200,300);

    // 设置顶点
    vertex(x, y);
    // 增加噪声的 x 维度
    xoff += 0.05;
  }
  // 增加噪声的 y 维度
  yoff += 0.01;
  vertex(width, height);
  vertex(0, height);
  endShape(CLOSE);
}
