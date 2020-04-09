/*
 * @name 마우스 버튼
 * @description 마우스를 움직여 도형의 위치를 바꿔보세요.
 * 마우스 버튼을 눌러 색을 반전시킬 수 있습니다.
 */
function setup() {
  createCanvas(720, 400);
  background(230);
  strokeWeight(2);
}

function draw() {
  if (mouseIsPressed) {
    stroke(255);
  } else {
    stroke(237, 34, 93);
  }
  line(mouseX - 66, mouseY, mouseX + 66, mouseY);
  line(mouseX, mouseY - 66, mouseX, mouseY + 66);
}
