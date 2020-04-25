/*
 * @name 연속된 선
 * @description 마우스를 클릭하고 드래그하여 선을 그려보세요.
 */
function setup() {
  createCanvas(710, 400);
  background(102);ㅌ
}

function draw() {
  stroke(255);
  if (mouseIsPressed === true) {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}
