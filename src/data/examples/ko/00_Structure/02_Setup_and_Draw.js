/*
<<<<<<< HEAD
 * @name 설정하고 그리기
 * @description draw()함수 안에의 코드는 위에서 아래 방향으로
 * 실행되며, 이는 프로그램이 멈출 때까지 계속해서 반복됩니다.
 */
let y = 100;

// setup()함수 속 선언문은 프로그램 시작 시 한번 실행됩니다.
function setup() {
  // createCanvas가 그 첫 선언문입니다. 
  createCanvas(720, 400);
  stroke(255); // 선색을 흰색(255)으로 지정
  frameRate(30);
}
// draw()함 수 안 선언문은 프로그램이 멈출 때까지 계속해서 실행됩니다.
// 각 선언문은 위에서 아래 방향으로 순차적으로 실행되며,
// 마지막 선언문 실행을 마친 뒤에는 상단의 첫 선언문으로 되돌아갑니다.
function draw() {
  background(0); // 배경색을 검정색(0)으로 지정
=======
 * @name Setup and Draw
 * @description The code inside the draw() function runs continuously from top
 * to bottom until the program is stopped.
 */
let y = 100;

// The statements in the setup() function
// execute once when the program begins
function setup() {
  // createCanvas must be the first statement
  createCanvas(720, 400);
  stroke(255); // Set line drawing color to white
  frameRate(30);
}
// The statements in draw() are executed until the
// program is stopped. Each statement is executed in
// sequence and after the last line is read, the first
// line is executed again.
function draw() {
  background(0); // Set the background to black
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  y = y - 1;
  if (y < 0) {
    y = height;
  }
  line(0, y, width, y);
}
