/*
<<<<<<< HEAD
 * @name 연속된 선
 * @description 마우스를 클릭하고 드래그하여 선을 그려보세요.
 */
function setup() {
  createCanvas(710, 400);
  background(102);ㅌ
=======
 * @name Continous Lines
 * @description Click and drag the mouse to draw a line.
 */
function setup() {
  createCanvas(710, 400);
  background(102);
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
}

function draw() {
  stroke(255);
  if (mouseIsPressed === true) {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}
