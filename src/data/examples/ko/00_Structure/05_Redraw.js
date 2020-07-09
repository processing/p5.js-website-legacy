/*
 * @name 다시 그리기
 * @description redraw()함수는 draw()함수를 재실행합니다.
 * 이 예제에서 draw()는 마우스가 클릭될 때마다 매번 재실행됩니다.
 */

let y;

// setup()함수 속 선언문들은 프로그램 시작시 한번 실행됩니다.
function setup() {
  createCanvas(720, 400);
  stroke(255);
  noLoop();
  y = height * 0.5;
}

// 아래의 draw()함수에 포함된 선언문들은 프로그램 실행이 멈출 때까지 계속해서 실행됩니다.
// 각 선언문은 위에서 아래 방향으로 순차적으로 실행되며,
// 마지막 선언문 실행을 마친 뒤에는 상단의 첫 선언문으로 되돌아갑니다.
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
