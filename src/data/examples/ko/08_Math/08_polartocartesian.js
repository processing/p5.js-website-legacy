/*
<<<<<<< HEAD
 * @name 극좌표를 직교 좌표로
 * @description 극좌표(지름 r, 세타 theta)를 직교 좌표(x,y)로 변환
 * : x = rcos(theta) y = rsin(theta)
 * 다니엘 쉬프만(Daniel Shiffman)이 원본 제작.
 */
let r;

// 각도, 각속도, 가속
=======
 * @name PolarToCartesian
 * @description Convert a polar coordinate (r,theta)
 * to cartesian (x,y): x = rcos(theta) y = rsin(theta)
 * Original by Daniel Shiffman.
 */
let r;

// Angle and angular velocity, accleration
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
let theta;
let theta_vel;
let theta_acc;

function setup() {
  createCanvas(710, 400);

<<<<<<< HEAD
  // 모든값 초기화
=======
  // Initialize all values
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  r = height * 0.45;
  theta = 0;
  theta_vel = 0;
  theta_acc = 0.0001;
}

function draw() {
  background(0);

<<<<<<< HEAD
  // 원점을 화면 중간 위치에 해당하는 좌표값으로 설정
  translate(width / 2, height / 2);

  // 극좌표를 직교 좌표로 변환
  let x = r * cos(theta);
  let y = r * sin(theta);

  // 직교 좌표에서 타원 그리기
=======
  // Translate the origin point to the center of the screen
  translate(width / 2, height / 2);

  // Convert polar to cartesian
  let x = r * cos(theta);
  let y = r * sin(theta);

  // Draw the ellipse at the cartesian coordinate
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  ellipseMode(CENTER);
  noStroke();
  fill(200);
  ellipse(x, y, 32, 32);

<<<<<<< HEAD
  // 가속도와 속도를 각도에 적용하기
  // (이 예제에서 r은 고정됩니다.)
=======
  // Apply acceleration and velocity to angle
  // (r remains static in this example)
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  theta_vel += theta_acc;
  theta += theta_vel;
}
