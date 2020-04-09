/*
<<<<<<< HEAD
 * @name 스프링
 * @frame 710, 400
 * @description 스프링 효과를 보려면 수평 막대를 클릭하고 드래그한 뒤 놓아보세요.
 */
// 상단의 막대를 위한 Spring drawing constants for top bar
=======
 * @name Spring
 * @frame 710, 400
 * @description Click, drag, and release the horizontal bar to start the spring.
 */
// Spring drawing constants for top bar
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
let springHeight = 32,
    left,
    right,
    maxHeight = 200,
    minHeight = 100,
    over = false,
    move = false;

<<<<<<< HEAD
// 스프링 시뮬레이션 상수들
let M = 0.8,  // Mass(질량)
    K = 0.2,  // 스프링 상수
    D = 0.92, // Damping(감쇠)
    R = 150;  // Rest Position(놓인 위치)

// 스프링 시뮬레이션 변수들
let ps = R,   // 위치
    vs = 0.0, // 속도
    as = 0,   // 가속도
    f = 0;    // 힘
=======
// Spring simulation constants
let M = 0.8,  // Mass
    K = 0.2,  // Spring constant
    D = 0.92, // Damping
    R = 150;  // Rest position

// Spring simulation variables
let ps = R,   // Position
    vs = 0.0, // Velocity
    as = 0,   // Acceleration
    f = 0;    // Force
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753

function setup() {
  createCanvas(710, 400);
  rectMode(CORNERS);
  noStroke();
  left = width / 2 - 100;
  right = width / 2 + 100;
}

function draw() {
  background(102);
  updateSpring();
  drawSpring();
}

function drawSpring() {
  // Draw base
  fill(0.2);
  let baseWidth = 0.5 * ps + -8;
  rect(width / 2 - baseWidth, ps + springHeight, width / 2 + baseWidth, height);

<<<<<<< HEAD
  // 상단 막대기의 색상 설정하고 그리기
=======
  // Set color and draw top bar
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  if (over || move) {
    fill(255);
  } else {
    fill(204);
  }

  rect(left, ps, right, ps + springHeight);
}

function updateSpring() {
<<<<<<< HEAD
  // 스프링 위치 업데이트
  if ( !move ) {
    f = -K * ( ps - R ); // f=-ky
    as = f / M;          // 가속도 설정, f=ma == a=f/m
    vs = D * (vs + as);  // 속도 설정
    ps = ps + vs;        // 업데이트된 위치
=======
  // Update the spring position
  if ( !move ) {
    f = -K * ( ps - R ); // f=-ky
    as = f / M;          // Set the acceleration, f=ma == a=f/m
    vs = D * (vs + as);  // Set the velocity
    ps = ps + vs;        // Updated position
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  }

  if (abs(vs) < 0.1) {
    vs = 0.0;
  }

<<<<<<< HEAD
  // 마우스가 상단 막대기 위에 있는지 여부 테스트
=======
  // Test if mouse if over the top bar
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  if (mouseX > left && mouseX < right && mouseY > ps && mouseY < ps + springHeight) {
    over = true;
  } else {
    over = false;
  }

<<<<<<< HEAD
  // 상단 막대기의 위치 설정 및 제한
=======
  // Set and constrain the position of top bar
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  if (move) {
    ps = mouseY - springHeight / 2;
    ps = constrain(ps, minHeight, maxHeight);
  }
}

function mousePressed() {
  if (over) {
    move = true;
  }
}

function mouseReleased() {
  move = false;
}
