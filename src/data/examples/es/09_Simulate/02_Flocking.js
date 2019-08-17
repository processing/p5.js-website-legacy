/*
 * @name Flocking
 * @description Demostración del comportamiento "Flocking" de Craig Reynolds.
 *Ver: http://www.red3d.com/cwr/
 * Reglas: cohesión, separación, alineamiento
 * (de <a href="http://natureofcode.com">natureofcode.com</a>).
 *  Arrastra el mouse para añadir boids al sistema.
 */


let flock;

let text;

function setup() {
  createCanvas(640, 360);
  createP("Drag the mouse to generate new boids.");

  flock = new Flock();
  // Añade un conjunto inicial de boids al sistema
  for (let i = 0; i < 100; i++) {
    let b = new Boid(width / 2,height / 2);
    flock.addBoid(b);
  }
}

function draw() {
  background(51);
  flock.run();
}

// Añade un nuevo boid al sistema
function mouseDragged() {
  flock.addBoid(new Boid(mouseX, mouseY));
}

// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

// Objeto Flock
// Hace pocas cosas, simplemente administra el arreglo de todos los boids

function Flock() {
  // Un arreglo para todos los boids
  this.boids = []; // Inicializar el arreglo
}

Flock.prototype.run = function() {
  for (let i = 0; i < this.boids.length; i++) {
    this.boids[i].run(this.boids);  // Pasar la lista entera de boids a cada boid de forma individual
  }
}

Flock.prototype.addBoid = function(b) {
  this.boids.push(b);
}

// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

// Clase Boid
// Métodos para Separación, Cohesión, alineamiento

function Boid(x, y) {
  this.acceleration = createVector(0, 0);
  this.velocity = createVector(random(-1, 1),random(-1, 1));
  this.position = createVector(x,y);
  this.r = 3.0;
  this.maxspeed = 3;    // Velocidad máxima
  this.maxforce = 0.05; // Fuerza de viraje máxima
}

Boid.prototype.run = function(boids) {
  this.flock(boids);
  this.update();
  this.borders();
  this.render();
}

Boid.prototype.applyForce = function(force) {
  // Posibilidad de agregar masa aquí si queremos A = F / M
  this.acceleration.add(force);
}

// Acumular una nueva aceleración cada vez basado en tres reglas
Boid.prototype.flock = function(boids) {
  let sep = this.separate(boids);   // Separación
  let ali = this.align(boids);      // Alineamiento
  let coh = this.cohesion(boids);   // Cohesión
  // Dar un peso arbitrario a cada fuerza
  sep.mult(1.5);
  ali.mult(1.0);
  coh.mult(1.0);
  // Suma los vectores de fuerza a la aceleración
  this.applyForce(sep);
  this.applyForce(ali);
  this.applyForce(coh);
}

// Método para actualizar ubicación
Boid.prototype.update = function() {
  // Refrescar velocidad
  this.velocity.add(this.acceleration);
  // Limitar velocidad
  this.velocity.limit(this.maxspeed);
  this.position.add(this.velocity);
  // Resetear acceleración a 0 en cada ciclo
  this.acceleration.mult(0);
}

// Un método que calcula y aplica una fuerza de viraje hacia una posición objetivo
// VIRAJE = DESEADO - VELOCIDAD
Boid.prototype.seek = function(target) {
  let desired = p5.Vector.sub(target, this.position);  // Un vector apuntando desde la ubicación hacia el objetivo
  // Normalizar deseado y escalar según velocidad máxima
  desired.normalize();
  desired.mult(this.maxspeed);
  // Viraje = Deseado - Velocidad
  let steer = p5.Vector.sub(desired, this.velocity);
  steer.limit(this.maxforce);  // Limita al máximo de fuerza de viraje
  return steer;
}

Boid.prototype.render = function() {
  // Dibuja un triángulo rotado en la dirección de la velocidad
  let theta = this.velocity.heading() + radians(90);
  fill(127);
  stroke(200);
  push();
  translate(this.position.x, this.position.y);
  rotate(theta);
  beginShape();
  vertex(0, -this.r * 2);
  vertex(-this.r, this.r * 2);
  vertex(this.r, this.r * 2);
  endShape(CLOSE);
  pop();
}

// Wraparound, salir por un borde y aparecer por el contrario
Boid.prototype.borders = function() {
  if (this.position.x < -this.r)  this.position.x = width +this.r;
  if (this.position.y < -this.r)  this.position.y = height+this.r;
  if (this.position.x > width + this.r) this.position.x = -this.r;
  if (this.position.y > height+ this.r) this.position.y = -this.r;
}

// Separación
// Método que revisa los boids cercanos y vira para alejarse de ellos
Boid.prototype.separate = function(boids) {
  let desiredseparation = 25.0;
  let steer = createVector(0, 0);
  let count = 0;
  // Por cada boid en el sistema, revisa si está muy cerca
  for (let i = 0; i < boids.length; i++) {
    let d = p5.Vector.dist(this.position, boids[i].position);
    // Si la distancia es mayor a 0 y menor que una cantidad arbitraria (0 cuando eres tú mismo)
    if ((d > 0) && (d < desiredseparation)) {
      // Calcular el vector apuntando a alejarse del vecino
      let diff = p5.Vector.sub(this.position, boids[i].position);
      diff.normalize();
      diff.div(d);        // Peso por distancia
      steer.add(diff);
      count++;            // Mantener registro de cantidad
    }
  }
  // Promedio -- divide por la cantidad
  if (count > 0) {
    steer.div(count);
  }

  // Mientras el vector sea mayor a 0
  if (steer.mag() > 0) {
    // Implementa Reynolds: Viraje = Deseado - Velocidad
    steer.normalize();
    steer.mult(this.maxspeed);
    steer.sub(this.velocity);
    steer.limit(this.maxforce);
  }
  return steer;
}

// Alineamiento
// Para cada boid cercano en el sistema, calcula la velocidad promedio
Boid.prototype.align = function(boids) {
  let neighbordist = 50;
  let sum = createVector(0, 0);
  let count = 0;
  for (let i = 0; i < boids.length; i++) {
    let d = p5.Vector.dist(this.position,boids[i].position);
    if ((d > 0) && (d < neighbordist)) {
      sum.add(boids[i].velocity);
      count++;
    }
  }
  if (count > 0) {
    sum.div(count);
    sum.normalize();
    sum.mult(this.maxspeed);
    let steer = p5.Vector.sub(sum, this.velocity);
    steer.limit(this.maxforce);
    return steer;
  } else {
    return createVector(0, 0);
  }
}

// Cohesión
// Para la ubicación promedio (centro) de todos los boids cercanos, calcula el vector de viraje hacia esa ubicación.
Boid.prototype.cohesion = function(boids) {
  let neighbordist = 50;
  let sum = createVector(0, 0);   // Empieza con un vector vacío para acumular todas las posiciones
  let count = 0;
  for (let i = 0; i < boids.length; i++) {
    let d = p5.Vector.dist(this.position,boids[i].position);
    if ((d > 0) && (d < neighbordist)) {
      sum.add(boids[i].position); // Añada posición
      count++;
    }
  }
  if (count > 0) {
    sum.div(count);
    return this.seek(sum);  // Vira hacia la posición
  } else {
    return createVector(0, 0);
  }
}
