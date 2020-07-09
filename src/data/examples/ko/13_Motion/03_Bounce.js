/*
 * @name 바운스
 * @frame 720,400
 * @description 도형이 화면의 모서리에 닿으면 반대 방향으로 움직입니다.
 */

let rad = 60; // 도형의 너비
let xpos, ypos; // 도형의 시작점

let xspeed = 2.8; // 도형의 속도
let yspeed = 2.2; // 도형의 속도

let xdirection = 1; // 왼쪽 또는 오른쪽
let ydirection = 1; // 위 또는 아래

function setup() {
  createCanvas(720, 400);
  noStroke();
  frameRate(30);
  ellipseMode(RADIUS);
  // 도형의 시작점 설정
  xpos = width / 2;
  ypos = height / 2;
}

function draw() {
  background(102);

  // 도형의 위치 업데이트
  xpos = xpos + xspeed * xdirection;
  ypos = ypos + yspeed * ydirection;

  // 도형이 화면 경계를 넘어가는 지 테스트
  // 넘어갈 경우, -1을 곱하여 방향을 반대로 돌린다.
  if (xpos > width - rad || xpos < rad) {
    xdirection *= -1;
  }
  if (ypos > height - rad || ypos < rad) {
    ydirection *= -1;
  }

  // 도형 그리기
  ellipse(xpos, ypos, rad, rad);
}
