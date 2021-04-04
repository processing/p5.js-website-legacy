/* @name 继承 (Inheritance)
 * @description 可以用一个类作为基础来定义另一个类。在面向对象的编程术语中，
 * 一个类可以继承另一个类的字段 (fields) 和方法 (methods)。
 * 从另一个物件继承了的物件称为子类 (subclass)，其继承的物件称为基类 (superclass)。
 * 子类扩展基类。
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