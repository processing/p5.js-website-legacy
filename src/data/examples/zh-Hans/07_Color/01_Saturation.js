/*
 * @name 饱和度
 * @description 饱和度是颜色的强度或者纯度，代表与色调成比例的灰色量。
 * “饱和”的颜色是纯色；“不饱和”的颜色含有很大比例的灰色。
 * 将光标在每个条形上垂直移动以更改其饱和度。
 */
const barWidth = 20;
let lastBar = -1;

function setup() {
  createCanvas(720, 400);
  colorMode(HSB, width, height, 100);
  noStroke();
}

function draw() {
  let whichBar = mouseX / barWidth;
  if (whichBar !== lastBar) {
    let barX = whichBar * barWidth;
    fill(barX, mouseY, 66);
    rect(barX, 0, barWidth, height);
    lastBar = whichBar;
  }
}
