/*
 * @name 애니메이션
 * @description 원이 움직입니다.
 */
// 원의 위치를 알기 위해
let x, y;

function setup() {
  createCanvas(720, 400);
  // 화면 가운데에서 시작하기
  x = width / 2;
  y = height;
}

function draw() {
  background(200);
  
  // 원 그리기
  stroke(50);
  fill(100);
  ellipse(x, y, 24, 24);
  
  // 가로축에서 무작위로 흔들리기
  x = x + random(-1, 1);
  // 일정 속도로 위를 향해 움직이기
  y = y - 1;
  
  // 화면 하단으로 리셋
  if (y < 0) {
    y = height;
  }
}

