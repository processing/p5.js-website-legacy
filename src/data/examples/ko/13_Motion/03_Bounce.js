/*
<<<<<<< HEAD
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
=======
 * @name Bounce
 * @frame 720,400
 * @description When the shape hits the edge of the window, it reverses its direction.
 */

let rad = 60; // Width of the shape
let xpos, ypos; // Starting position of shape

let xspeed = 2.8; // Speed of the shape
let yspeed = 2.2; // Speed of the shape

let xdirection = 1; // Left or Right
let ydirection = 1; // Top to Bottom
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753

function setup() {
  createCanvas(720, 400);
  noStroke();
  frameRate(30);
  ellipseMode(RADIUS);
<<<<<<< HEAD
  // 도형의 시작점 설정
=======
  // Set the starting position of the shape
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  xpos = width / 2;
  ypos = height / 2;
}

function draw() {
  background(102);

<<<<<<< HEAD
  // 도형의 위치 업데이트
  xpos = xpos + xspeed * xdirection;
  ypos = ypos + yspeed * ydirection;

  // 도형이 화면 경계를 넘어가는 지 테스트
  // 넘어갈 경우, -1을 곱하여 방향을 반대로 돌린다.
=======
  // Update the position of the shape
  xpos = xpos + xspeed * xdirection;
  ypos = ypos + yspeed * ydirection;

  // Test to see if the shape exceeds the boundaries of the screen
  // If it does, reverse its direction by multiplying by -1
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  if (xpos > width - rad || xpos < rad) {
    xdirection *= -1;
  }
  if (ypos > height - rad || ypos < rad) {
    ydirection *= -1;
  }

<<<<<<< HEAD
  // 도형 그리기
=======
  // Draw the shape
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  ellipse(xpos, ypos, rad, rad);
}
