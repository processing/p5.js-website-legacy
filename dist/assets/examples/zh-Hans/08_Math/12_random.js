/*
 * @name 随机
 * @description 随机数创建了此图像的基础。
 * 每次加载程序将产生不同的结果。
 */
function setup() {
  createCanvas(710, 400);
  background(0);
  strokeWeight(20);
  frameRate(2);
}

function draw() {
  for (let i = 0; i < width; i++) {
  	// 随机在 0-255 之间取数
    let r = random(255);
    stroke(r);
    line(i, 0, i, height);
  }
}
