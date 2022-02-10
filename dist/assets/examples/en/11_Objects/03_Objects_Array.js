/*
 * @name Array of Objects
 * @arialabel Multiple sizes of small white circles placed randomly on a dark navy background that move in small amounts in various directions by itself like they are jittering 
 * @description Create a Jitter class, instantiate an array of objects
 * and move them around the screen.
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
