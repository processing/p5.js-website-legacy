/*
<<<<<<< HEAD
 * @name 힘
 * @description 바디 오브젝트에 작용하는 여러가지 물리학적 힘
 * (<a href="http://natureofcode.com">natureofcode.com</a>)
 */
// 바디에 적용되는 여러가지 물리학적 힘(Mover 클래스)
// 바디는 중력을 끊임없이 경험합니다.
// 바디는 물 속에서 유체 저항을 경험합니다.

// 5개의 움직이는 형체
=======
 * @name Forces
 * @description Demonstration of multiple force acting on bodies
 * (<a href="http://natureofcode.com">natureofcode.com</a>)
 */
// Demonstration of multiple force acting on
// bodies (Mover class)
// Bodies experience gravity continuously
// Bodies experience fluid resistance when in "water"

// Five moving bodies
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
let movers = [];

// Liquid
let liquid;

function setup() {
  createCanvas(640, 360);
  reset();
<<<<<<< HEAD
  // 액체 오브젝트 생성
=======
  // Create liquid object
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  liquid = new Liquid(0, height / 2, width, height / 2, 0.1);
}

function draw() {
  background(127);

<<<<<<< HEAD
  // 물 그리기
=======
  // Draw water
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  liquid.display();

  for (let i = 0; i < movers.length; i++) {

<<<<<<< HEAD
    // Mover가 액체인가요?
    if (liquid.contains(movers[i])) {
      // 항력 계산하기
      let dragForce = liquid.calculateDrag(movers[i]);
      // Mover에 항력 적용하기
      movers[i].applyForce(dragForce);
    }

    // 중력은 여기서 mass(질량)에 따라 결정됩니다!
    let gravity = createVector(0, 0.1 * movers[i].mass);
    // 중력 적용하기
    movers[i].applyForce(gravity);

    // 업데이트하고 화면에 보이기(display)
=======
    // Is the Mover in the liquid?
    if (liquid.contains(movers[i])) {
      // Calculate drag force
      let dragForce = liquid.calculateDrag(movers[i]);
      // Apply drag force to Mover
      movers[i].applyForce(dragForce);
    }

    // Gravity is scaled by mass here!
    let gravity = createVector(0, 0.1 * movers[i].mass);
    // Apply gravity
    movers[i].applyForce(gravity);

    // Update and display
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
    movers[i].update();
    movers[i].display();
    movers[i].checkEdges();
  }

}


function mousePressed() {
  reset();
}

<<<<<<< HEAD
// 모든 Mover 오브젝트들을 무작위로 재시작하기
=======
// Restart all the Mover objects randomly
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
function reset() {
  for (let i = 0; i < 9; i++) {
    movers[i] = new Mover(random(0.5, 3), 40 + i * 70, 0);
  }
}

let Liquid = function(x, y, w, h, c) {
  this.x = x;
  this.y = y;
  this.w = w;
  this.h = h;
  this.c = c;
};

<<<<<<< HEAD
// Mover가 액체인가요?
=======
// Is the Mover in the Liquid?
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
Liquid.prototype.contains = function(m) {
  let l = m.position;
  return l.x > this.x && l.x < this.x + this.w &&
         l.y > this.y && l.y < this.y + this.h;
};

<<<<<<< HEAD
// 항력 계산하기
Liquid.prototype.calculateDrag = function(m) {
  // Magnitue(크기) = 계수 * speed(속도)의 제곱
  let speed = m.velocity.mag();
  let dragMagnitude = this.c * speed * speed;

  // 방향은 속도와 반대쪽으로
  let dragForce = m.velocity.copy();
  dragForce.mult(-1);

  // 힘의 크기에 따라 조정하기
=======
// Calculate drag force
Liquid.prototype.calculateDrag = function(m) {
  // Magnitude is coefficient * speed squared
  let speed = m.velocity.mag();
  let dragMagnitude = this.c * speed * speed;

  // Direction is inverse of velocity
  let dragForce = m.velocity.copy();
  dragForce.mult(-1);

  // Scale according to magnitude
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  // dragForce.setMag(dragMagnitude);
  dragForce.normalize();
  dragForce.mult(dragMagnitude);
  return dragForce;
};

Liquid.prototype.display = function() {
  noStroke();
  fill(50);
  rect(this.x, this.y, this.w, this.h);
};

function Mover(m, x, y) {
  this.mass = m;
  this.position = createVector(x, y);
  this.velocity = createVector(0, 0);
  this.acceleration = createVector(0, 0);
}

<<<<<<< HEAD
// 뉴턴(Newton)의 두번째 법칙: F = M * A
// 또는 A = F / M
=======
// Newton's 2nd law: F = M * A
// or A = F / M
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
Mover.prototype.applyForce = function(force) {
  let f = p5.Vector.div(force, this.mass);
  this.acceleration.add(f);
};

Mover.prototype.update = function() {
<<<<<<< HEAD
  // 가속도에 따라 변하는 속도
  this.velocity.add(this.acceleration);
  // 속도에 따라 변하는 위치
  this.position.add(this.velocity);
  // 매 프레임마다 가속도 초기화
=======
  // Velocity changes according to acceleration
  this.velocity.add(this.acceleration);
  // position changes by velocity
  this.position.add(this.velocity);
  // We must clear acceleration each frame
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  this.acceleration.mult(0);
};

Mover.prototype.display = function() {
  stroke(0);
  strokeWeight(2);
  fill(255,127);
  ellipse(this.position.x, this.position.y, this.mass * 16, this.mass * 16);
};

<<<<<<< HEAD
// 바닥면에서 튀어오르기
Mover.prototype.checkEdges = function() {
  if (this.position.y > (height - this.mass * 8)) {
    // 바닥면에 닿을 때 약간의 완충 현상 발생
=======
// Bounce off bottom of window
Mover.prototype.checkEdges = function() {
  if (this.position.y > (height - this.mass * 8)) {
    // A little dampening when hitting the bottom
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
    this.velocity.y *= -0.9;
    this.position.y = (height - this.mass * 8);
  }
};








