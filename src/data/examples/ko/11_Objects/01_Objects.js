/*
<<<<<<< HEAD
 * @name 객체(object)
 * @description Jitter 클래스를 만들고, 객체를 인스턴스화하여
 * 화면 안에서 움직여보세요. 캐시 리아즈(Casey Reas) & 벤 프라이(Ben Fry) 저 Getting Started with
 * Processing에서 옮김.
 */

let bug; // 객체 선언

function setup() {
  createCanvas(710, 400);
  // 객체 생성
=======
 * @name Objects
 * @description Create a Jitter class, instantiate an object,
 * and move it around the screen. Adapted from Getting Started with
 * Processing by Casey Reas and Ben Fry.
 */

let bug; // Declare object

function setup() {
  createCanvas(710, 400);
  // Create object
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  bug = new Jitter();
}

function draw() {
  background(50, 89, 100);
  bug.move();
  bug.display();
}

<<<<<<< HEAD
// Jitter 클래스
=======
// Jitter class
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
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
