/*
<<<<<<< HEAD
 * @name 가속 공 바운스
 * @description accelerationX와 accelerationY 값을 활용해 타원을 움직이고, 캔버스의 경계에 닿았을 때 튕기도록 만듭니다.
 */

// 위치 변수들
let x = 0;
let y = 0;

// 속도 변수들
let vx = 0;
let vy = 0;

// 가속 변수들
=======
 * @name Acceleration Ball Bounce
 * @description Move an ellipse around based on accelerationX and accelerationY values, and bounces when touch the edge of the canvas.
 */

// Position Variables
let x = 0;
let y = 0;

// Speed - Velocity
let vx = 0;
let vy = 0;

// Acceleration
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
let ax = 0;
let ay = 0;

let vMultiplier = 0.007;
let bMultiplier = 0.6;

function setup() {
  createCanvas(displayWidth, displayHeight);
  fill(0);
}

function draw() {
  background(255);
  ballMove();
  ellipse(x, y, 30, 30);
}

function ballMove() {
  ax = accelerationX;
  ay = accelerationY;

  vx = vx + ay;
  vy = vy + ax;
  y = y + vy * vMultiplier;
  x = x + vx * vMultiplier;

<<<<<<< HEAD
  // 캔버스의 경계에 닿았을 때 튕기기
=======
  // Bounce when touch the edge of the canvas
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  if (x < 0) {
    x = 0;
    vx = -vx * bMultiplier;
  }
  if (y < 0) {
    y = 0;
    vy = -vy * bMultiplier;
  }
  if (x > width - 20) {
    x = width - 20;
    vx = -vx * bMultiplier;
  }
  if (y > height - 20) {
    y = height - 20;
    vy = -vy * bMultiplier;
  }
}
