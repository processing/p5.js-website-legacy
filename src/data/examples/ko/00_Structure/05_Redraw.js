/*
<<<<<<< HEAD
 * @name 다시 그리기
 * @description redraw()함수는 draw()함수를 다시 한번 실행합니다.
 * 이 예제에서 draw()는 마우스가 클릭될 때마다 매번 재실행됩니다.
=======
 * @name Redraw
 * @description The redraw() function makes draw() execute once. In this example,
 * draw() is executed once every time the mouse is clicked.
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
 */

let y;

<<<<<<< HEAD
// setup()함수 속 선언문은 프로그램 시작 시 한번 실행됩니다.
=======
// The statements in the setup() function
// execute once when the program begins
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
function setup() {
  createCanvas(720, 400);
  stroke(255);
  noLoop();
  y = height * 0.5;
}

<<<<<<< HEAD
// 아래의 draw()함수에 포함된 선언문들은 프로그램 실행이 멈출 때까지 계속해서 실행됩니다.
// 각 선언문은 위에서 아래 방향으로 순차적으로 실행되며,
// 마지막 선언문 실행을 마친 뒤에는 상단의 첫 선언문으로 되돌아갑니다.
=======
// The statements in draw() are executed until the
// program is stopped. Each statement is executed in
// sequence and after the last line is read, the first
// line is executed again.
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
function draw() {
  background(0);
  y = y - 4;
  if (y < 0) {
    y = height;
  }
  line(0, y, width, y);
}

function mousePressed() {
  redraw();
}
