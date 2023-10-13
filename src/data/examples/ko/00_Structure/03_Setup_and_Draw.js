/*
 * @name 설정하고 그리기
 * @description draw()함수 속의 코드들은 위에서 아래 방향으로
 * 실행되며, 프로그램이 멈출 때까지 계속해서 반복됩니다.
 */
let y = 100;

// setup()함수 속 선언문은 프로그램 시작시 한번 실행됩니다.
function setup() {
  // createCanvas가 그 첫 선언문입니다. 
  createCanvas(720, 400);
  stroke(255); // 선색을 흰색(255)으로 지정
  frameRate(30);
}
// draw() 함수 속 선언문들은 프로그램이 멈출 때까지 계속해서 실행됩니다.
// 각 선언문은 위에서 아래 방향으로 순차적으로 실행되며,
// 마지막 선언문 실행을 마친 뒤에는 상단의 첫 선언문으로 되돌아갑니다.
function draw() {
  background(0); // 배경색을 검정색(0)으로 지정
  y = y - 1;
  if (y < 0) {
    y = height;
  }
  line(0, y, width, y);
}
