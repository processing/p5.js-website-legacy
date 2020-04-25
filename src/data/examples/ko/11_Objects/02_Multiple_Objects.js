/*
 * @name 복수 객체
 * @description Jitter 클래스를 만들고, 복수의 객체를 인스턴스화하여
 * 화면 안에서 움직여보세요.
 */

let bug1; // 객체들 선언하기
let bug2;
let bug3;
let bug4;

function setup() {
  createCanvas(710, 400);
  // 객체 생성하기
  bug1 = new Jitter();
  bug2 = new Jitter();
  bug3 = new Jitter();
  bug4 = new Jitter();
}

function draw() {
  background(50, 89, 100);
  bug1.move();
  bug1.display();
  bug2.move();
  bug2.display();
  bug3.move();
  bug3.display();
  bug4.move();
  bug4.display();
}

// Jitter 클래스
class Jitter {
  constructor() {
    this.x = random(width);
    this.y = random(height);
    this.diameter = random(10, 30);
    this.speed = 1;
  }

  move() {
    this.x += random(-this.speed, this.speed);
    this.y += random(-this.speed, this.speed);
  }

  display() {
    ellipse(this.x, this.y, this.diameter, this.diameter);
  }
}
