/*
<<<<<<< HEAD
 * @name 마우스 기능
 * @description 상자를 클릭한 뒤 화면 위에서 드래그 해보세요.
=======
 * @name Mouse Functions
 * @description Click on the box and drag it across the screen.
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
 */
let bx;
let by;
let boxSize = 75;
let overBox = false;
let locked = false;
let xOffset = 0.0;
let yOffset = 0.0;

function setup() {
  createCanvas(720, 400);
  bx = width / 2.0;
  by = height / 2.0;
  rectMode(RADIUS);
  strokeWeight(2);
}

function draw() {
  background(237, 34, 93);

<<<<<<< HEAD
  // 상자 위에 커서가 있는지를 테스트
=======
  // Test if the cursor is over the box
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  if (
    mouseX > bx - boxSize &&
    mouseX < bx + boxSize &&
    mouseY > by - boxSize &&
    mouseY < by + boxSize
  ) {
    overBox = true;
    if (!locked) {
      stroke(255);
      fill(244, 122, 158);
    }
  } else {
    stroke(156, 39, 176);
    fill(244, 122, 158);
    overBox = false;
  }

<<<<<<< HEAD
  // 상자 그리기
=======
  // Draw the box
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  rect(bx, by, boxSize, boxSize);
}

function mousePressed() {
  if (overBox) {
    locked = true;
    fill(255, 255, 255);
  } else {
    locked = false;
  }
  xOffset = mouseX - bx;
  yOffset = mouseY - by;
}

function mouseDragged() {
  if (locked) {
    bx = mouseX - xOffset;
    by = mouseY - yOffset;
  }
}

function mouseReleased() {
  locked = false;
}
