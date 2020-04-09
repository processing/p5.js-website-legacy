/*
<<<<<<< HEAD
 * @name 채도
 * @description 채도는 회색이 차지하는 비율에 따른, 색조의 짙음 또는 맑음 정도를 말합니다.
 * 포화된 색은 맑고, 불포화된 색은 높은 비율의 회색조를 갖습니다.
 * 마우스 커서를 세로축으로 움직여 막대기의 채도를 변경해 보세요.
=======
 * @name Saturation
 * @description Saturation is the strength or purity of the color and
 * represents the amount of gray in proportion to the hue. A "saturated"
 * color is pure and an "unsaturated" color has a large percentage of gray.
 * Move the cursor vertically over each bar to alter its saturation.
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
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
