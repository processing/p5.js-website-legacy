/*
<<<<<<< HEAD
 * @name 공 흔들고 튕기기
 * @description Ball 클래스를 생성하고 복수의 객체를 인스턴스화한 뒤, 화면 위에서 움직여보세요.
 * 공이 캔버스의 경계에 닿으면 튕깁니다. 
 * accelerationX와 accelerationY의 총 변화를 기반으로 흔들림을 감지하고,
 * 그러한 감지를 기반으로 객체의 속도를 높이거나 줄입니다.
=======
 * @name Shake Ball Bounce
 * @description Create a Ball class, instantiate multiple objects, move it around the screen, and bounce when touch the edge of the canvas.
 * Detect shake event based on total change in accelerationX and accelerationY and speed up or slow down objects based on detection.
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
 */

let balls = [];

let threshold = 30;
let accChangeX = 0;
let accChangeY = 0;
let accChangeT = 0;

function setup() {
  createCanvas(displayWidth, displayHeight);

  for (let i = 0; i < 20; i++) {
    balls.push(new Ball());
  }
}

function draw() {
  background(0);

  for (let i = 0; i < balls.length; i++) {
    balls[i].move();
    balls[i].display();
  }

  checkForShake();
}

function checkForShake() {
<<<<<<< HEAD
  // accelerationX and accelerationY의 총 변화 계산
  accChangeX = abs(accelerationX - pAccelerationX);
  accChangeY = abs(accelerationY - pAccelerationY);
  accChangeT = accChangeX + accChangeY;
  // 만약 흔들린다면,
=======
  // Calculate total change in accelerationX and accelerationY
  accChangeX = abs(accelerationX - pAccelerationX);
  accChangeY = abs(accelerationY - pAccelerationY);
  accChangeT = accChangeX + accChangeY;
  // If shake
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  if (accChangeT >= threshold) {
    for (let i = 0; i < balls.length; i++) {
      balls[i].shake();
      balls[i].turn();
    }
  }
<<<<<<< HEAD
  // 만약 흔들리지 않는다면,
=======
  // If not shake
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  else {
    for (let i = 0; i < balls.length; i++) {
      balls[i].stopShake();
      balls[i].turn();
      balls[i].move();
    }
  }
}

<<<<<<< HEAD
// Ball 클래스
=======
// Ball class
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
class Ball {
  constructor() {
    this.x = random(width);
    this.y = random(height);
    this.diameter = random(10, 30);
    this.xspeed = random(-2, 2);
    this.yspeed = random(-2, 2);
    this.oxspeed = this.xspeed;
    this.oyspeed = this.yspeed;
    this.direction = 0.7;
  }

  move() {
    this.x += this.xspeed * this.direction;
    this.y += this.yspeed * this.direction;
  }

<<<<<<< HEAD
  // 캔버스 경계에 닿았을 때 공 튀기기
=======
  // Bounce when touch the edge of the canvas
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  turn() {
    if (this.x < 0) {
      this.x = 0;
      this.direction = -this.direction;
    } else if (this.y < 0) {
      this.y = 0;
      this.direction = -this.direction;
    } else if (this.x > width - 20) {
      this.x = width - 20;
      this.direction = -this.direction;
    } else if (this.y > height - 20) {
      this.y = height - 20;
      this.direction = -this.direction;
    }
  }

<<<<<<< HEAD
  // accerlerationX 값의 변화를 기반으로
  // xspeed와 yspeed에 더하기
=======
  // Add to xspeed and yspeed based on
  // the change in accelerationX value
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  shake() {
    this.xspeed += random(5, accChangeX / 3);
    this.yspeed += random(5, accChangeX / 3);
  }

<<<<<<< HEAD
  // 점점 느려지기
=======
  // Gradually slows down
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  stopShake() {
    if (this.xspeed > this.oxspeed) {
      this.xspeed -= 0.6;
    } else {
      this.xspeed = this.oxspeed;
    }
    if (this.yspeed > this.oyspeed) {
      this.yspeed -= 0.6;
    } else {
      this.yspeed = this.oyspeed;
    }
  }

  display() {
    ellipse(this.x, this.y, this.diameter, this.diameter);
  }
}
