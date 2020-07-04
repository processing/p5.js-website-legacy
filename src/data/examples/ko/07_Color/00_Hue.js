/*
 * @name 색조
 * @description 색조는 오브젝트에 반사되거나 이를 통해 전달된 색상을 말하며,
 * 일반적으로 색상명(빨강, 파랑, 노랑 등)으로 불립니다.
 * 마우스 커서를 세로축으로 움직여 막대기의 색조를 변경해 보세요.
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
