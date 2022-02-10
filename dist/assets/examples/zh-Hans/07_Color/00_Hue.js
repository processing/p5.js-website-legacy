/*
 * @name 色调
 * @description 色调是从物件反射或透过物件传播得到的颜色，
 * 通常指颜色的名字（红色，蓝色，黄色等）。
 * 将光标在每个条形上垂直移动以更改其色调。
 */
const barWidth = 20;
let lastBar = -1;

function setup() {
  createCanvas(720, 400);
  colorMode(HSB, height, height, height);
  noStroke();
  background(0);
}

function draw() {
  let whichBar = mouseX / barWidth;
  if (whichBar !== lastBar) {
    let barX = whichBar * barWidth;
    fill(mouseY, height, height);
    rect(barX, 0, barWidth, height);
    lastBar = whichBar;
  }
}
