/*
 * @name Arreglo de objetos
 * @description Crea una clase Jitter, instancia múltiples objetos, y los mueve en la pantalla.
 */
var bugs = []; //arreglo de objetos Jitter

function setup() {
  createCanvas(710, 400);
  // Crear objetos
  for (var i=0; i<50; i++) {
    bugs.push(new Jitter());
  }
}

function draw() {
  background(50, 89, 100);
  for (var i=0; i<bugs.length; i++) {
    bugs[i].move();
    bugs[i].display();
  }
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
  };
}
