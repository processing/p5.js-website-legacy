/*
 * @name 선형
 * @frame 720,400
 * @description 변수를 바꿔 움직이는 선을 만들어보세요.
 * 선이 화면 상단 밖으로 나가면 변수는 0이 되어
 * 선의 위치를 화면의 하단으로 되돌립니다.
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
