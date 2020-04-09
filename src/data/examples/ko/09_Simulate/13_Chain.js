/*
<<<<<<< HEAD
 * @name 사슬
 * @description 한 도형은 마우스 커서 위치에, 다른 하나는 이 도형의 위치에 붙어 따라옵니다.
 * 화면에는 중력이 작용하여 두 도형을 아래 방향으로 끌어당깁니다.
 * 프로세싱(Processing) 홈페이지의 예제 페이지에서 옮겨왔습니다.
=======
 * @name Chain
 * @description One mass is attached to the mouse position and the other is attached the position of the other mass. The gravity in the environment pulls down on both.
 * Ported from the Processing Examples page.
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
 */
let s1, s2;
let gravity = 9.0;
let mass = 2.0;

function setup() {
  createCanvas(720, 400);
  fill(255, 126);
<<<<<<< HEAD
  // 입력: x, y, mass(질량), gravity(중력)
=======
  // Inputs: x, y, mass, gravity
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  s1 = new Spring2D(0.0, width / 2, mass, gravity);
  s2 = new Spring2D(0.0, width / 2, mass, gravity);
}

function draw() {
  background(0);
  s1.update(mouseX, mouseY);
  s1.display(mouseX, mouseY);
  s2.update(s1.x, s1.y);
  s2.display(s1.x, s1.y);
}

function Spring2D(xpos, ypos, m, g) {
<<<<<<< HEAD
  this.x = xpos;// x 와 y 좌표
  this.y = ypos;
  this.vx = 0; // x축과 y축 속도
=======
  this.x = xpos;// The x- and y-coordinates
  this.y = ypos;
  this.vx = 0; // The x- and y-axis velocities
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  this.vy = 0;
  this.mass = m;
  this.gravity = g;
  this.radius = 30;
  this.stiffness = 0.2;
  this.damping = 0.7;

  this.update = function(targetX, targetY) {
    let forceX = (targetX - this.x) * this.stiffness;
    let ax = forceX / this.mass;
    this.vx = this.damping * (this.vx + ax);
    this.x += this.vx;
    let forceY = (targetY - this.y) * this.stiffness;
    forceY += this.gravity;
    let ay = forceY / this.mass;
    this.vy = this.damping * (this.vy + ay);
    this.y += this.vy;
  }

  this.display = function(nx, ny) {
    noStroke();
    ellipse(this.x, this.y, this.radius * 2, this.radius * 2);
    stroke(255);
    line(this.x, this.y, nx, ny);
  }
}