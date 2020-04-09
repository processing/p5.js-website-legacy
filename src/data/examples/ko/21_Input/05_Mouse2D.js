/*
<<<<<<< HEAD
 * @name 2D 마우스
 * @description 마우스를 움직이면 각 상자의 위치와 크기가 바뀝니다.
=======
 * @name Mouse 2D
 * @description Moving the mouse changes the position and
 * size of each box.
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
 */
function setup() {
  createCanvas(720, 400);
  noStroke();
  rectMode(CENTER);
}

function draw() {
  background(230);
  fill(244, 122, 158);
  rect(mouseX, height / 2, mouseY / 2 + 10, mouseY / 2 + 10);
  fill(237, 34, 93);
  let inverseX = width - mouseX;
  let inverseY = height - mouseY;
  rect(inverseX, height / 2, inverseY / 2 + 10, inverseY / 2 + 10);
}
