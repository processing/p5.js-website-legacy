/*
<<<<<<< HEAD
 * @name 객체 배열
 * @description Jitter 클래스를 만들고, 객체 배열을 인스턴스화하여
 * 화면 안에서 움직여보세요.
=======
 * @name Array of Objects
 * @description Create a Jitter class, instantiate an array of objects
 * and move them around the screen.
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
 */

let bugs = []; // array of Jitter objects

function setup() {
  createCanvas(710, 400);
  // Create objects
  for (let i = 0; i < 50; i++) {
    bugs.push(new Jitter());
  }
}

function draw() {
  background(50, 89, 100);
  for (let i = 0; i < bugs.length; i++) {
    bugs[i].move();
    bugs[i].display();
  }
}

// Jitter class
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
