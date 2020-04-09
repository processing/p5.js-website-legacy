/*
<<<<<<< HEAD
 * @name 애니메이션
 * @description 원이 움직입니다.
 */
// 원의 위치를 알기 위해
=======
 * @name Animation
 * @description The circle moves.
 */
// Where is the circle
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
let x, y;

function setup() {
  createCanvas(720, 400);
<<<<<<< HEAD
  // 화면 가운데에서 시작하기
=======
  // Starts in the middle
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  x = width / 2;
  y = height;
}

function draw() {
  background(200);
  
<<<<<<< HEAD
  // 원 그리기
=======
  // Draw a circle
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  stroke(50);
  fill(100);
  ellipse(x, y, 24, 24);
  
<<<<<<< HEAD
  // 가로축에서 무작위로 흔들리기
  x = x + random(-1, 1);
  // 일정 속도로 위를 향해 움직이기
  y = y - 1;
  
  // 화면 하단으로 리셋
=======
  // Jiggling randomly on the horizontal axis
  x = x + random(-1, 1);
  // Moving up at a constant speed
  y = y - 1;
  
  // Reset to the bottom
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  if (y < 0) {
    y = height;
  }
}

