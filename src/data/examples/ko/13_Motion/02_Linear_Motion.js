/*
<<<<<<< HEAD
 * @name 선형
 * @frame 720,400
 * @description 변수를 바꿔 움직이는 선을 만들어보세요.
 * 선이 화면 상단 밖으로 나가면 변수는 0이 되어
 * 선의 위치를 화면의 하단으로 되돌립니다.
=======
 * @name Linear
 * @frame 720,400
 * @description Changing a variable to create a moving line.
 * When the line moves off the edge of the window,
 * the variable is set to 0, which places the line back at the bottom of the screen.
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
 */

let a;

function setup() {
  createCanvas(720, 400);
  stroke(255);
  a = height / 2;
}

function draw() {
  background(51);
  line(0, a, width, a);
  a = a - 0.5;
  if (a < 0) {
    a = height;
  }
}
