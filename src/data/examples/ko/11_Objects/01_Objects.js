/*
 * @name 객체
 * @description Jitter 클래스를 만들고, 객체를 인스턴스화하여
 * 화면 안에서 움직여보세요. 캐시 리스(Casey Reas) & 벤 프라이(Ben Fry) 저 Getting Started with
 * Processing에서 옮김.
 */

let bug; // 객체 선언하기

function setup() {
  createCanvas(710, 400);
  // 객체 생성하기
  bug = new Jitter();
}

function draw() {
  background(50, 89, 100);
  bug.move();
  bug.display();
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
