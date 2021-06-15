/*
 * @name Hue
 * @description Hue is the color reflected from or transmitted through an
 * object and is typically referred to as the name of the color (red, blue,
 * yellow, etc.) Move the cursor vertically over each bar to alter its hue.
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
