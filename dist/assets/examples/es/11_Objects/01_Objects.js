/*
 * @name Objetos
 * @description Crea una clase Jitter, instancia un objeto,
 * y lo mueve en la pantalla. Adaptado del libro "Getting Started with
 * Processing" por Casey Reas y Ben Fry.
 */
var bug;  // declarar objeto

function setup() {
  createCanvas(710, 400);
  // crear objeto
  bug = new Jitter();
}

function draw() {
  background(50, 89, 100);
  bug.move();
  bug.display();
}

// clase Jitter
function Jitter() {
  this.x = random(width);
  this.y = random(height);
  this.diameter = random(10, 30);
  this.speed = 1;

  this.move = function() {
    this.x += random(-this.speed, this.speed);
    this.y += random(-this.speed, this.speed);
  };

  this.display = function() {
    ellipse(this.x, this.y, this.diameter, this.diameter);
  }
};
