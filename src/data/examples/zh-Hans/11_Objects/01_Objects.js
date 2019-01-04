/*
 * @name Objects
 * @description Create a Jitter class, instantiate an object,
 * and move it around the screen. Adapted from Getting Started with
 * Processing by Casey Reas and Ben Fry.
 */

let bug; // Declare object

function setup() {
  createCanvas(710, 400);
  // Create object
  bug = new Jitter();
}

function draw() {
  background(50, 89, 100);
  bug.move();
  bug.display();
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
