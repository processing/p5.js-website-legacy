/* @name 상속
 * @description 다른 클래스에 기초하여 클래스를 정의할 수 있습니다. 
 * 객체 지향 프로그래밍 언어에서, 한 클래스는 다른 클래스의 필드와 메소드를 상속할 수 있습니다.
 * 이처럼 다른 객체로부터 상속받는 객체를 하위 클래스라 하고,
 * 상속하는 객체를 상위 클래스라고 합니다.
 * 하위 클래스는 상위 클래스를 확장합니다.
 */
let spots, arm;

function setup() {
  createCanvas(640, 360);
  arm = new SpinArm(width/2, height/2, 0.01);
  spots = new SpinSpots(width/2, height/2, -0.02, 90.0);
}

function draw() {
  background(204);
  arm.update();
  arm.display();
  spots.update();
  spots.display();
}

class Spin {
  constructor(x, y, s) {
    this.x = x;
    this.y = y;
    this.speed = s;
    this.angle = 0.0;
  }

  update() {
    this.angle += this.speed;
  }
}

class SpinArm extends Spin {
  constructor(x, y, s) {
    super(x, y, s)
  }

  display() {
    strokeWeight(1);
    stroke(0);
    push();
    translate(this.x, this.y);
    this.angle += this.speed;
    rotate(this.angle);
    line(0, 0, 165, 0);
    pop();
  }
}

class SpinSpots extends Spin {
  constructor(x, y, s, d) {
    super(x, y, s)
    this.dim = d;
  }

  display() {
    noStroke();
    push();
    translate(this.x, this.y);
    this.angle += this.speed;
    rotate(this.angle);
    ellipse(-this.dim/2, 0, this.dim, this.dim);
    ellipse(this.dim/2, 0, this.dim, this.dim);
    pop();
  }
}