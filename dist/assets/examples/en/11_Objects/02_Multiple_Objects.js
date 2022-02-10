/*
 * @name Multiple Objects
 * @arialabel Four small white circles places randomly on a dark navy background that move in small amounts in various directions by itself like they are jittering 
 * @description Create a Jitter class, instantiate multiple objects,
 * and move it around the screen.
 */

let bug1; // Declare objects
let bug2;
let bug3;
let bug4;

function setup() {
  createCanvas(710, 400);
  // Create object
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
