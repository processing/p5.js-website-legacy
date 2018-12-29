/*
* @name Dibujar
* @description Programa de pintura generativa.
*/

// todos los caminos
let paths = [];
// si estamos pintando o no
let painting = false;
// cuánto tiempo pasa antes de hacer el siguiente círculo
let next = 0;
// dónde estamos ahora y donde estuvimos antes
let current;
let previous;

function setup() {
  createCanvas(720, 400);
  current = createVector(0,0);
  previous = createVector(0,0);
};

function draw() {
  background(200);

  // si es tiempo de hacer un nuevo punto
  if (millis() > next && painting) {

    // obtener posición del ratón
    current.x = mouseX;
    current.y = mouseY;

    // la fuerza de la nueva partícula depende del movimiento del ratón
    let force = p5.Vector.sub(current, previous);
    force.mult(0.05);

    // añadir nueva partícula
    paths[paths.length - 1].add(current, force);

    // programar el siguiente círculo
    next = millis() + random(100);

    // Guardar las posiciones del ratón
    previous.x = current.x;
    previous.y = current.y;
  }

  // dibujar todos los caminos
  for( let i = 0; i < paths.length; i++) {
    paths[i].update();
    paths[i].display();
  }
}

// empezar
function mousePressed() {
  next = 0;
  painting = true;
  previous.x = mouseX;
  previous.y = mouseY;
  paths.push(new Path());
}

// parar
function mouseReleased() {
  painting = false;
}

// un camino Path es una lista de partículas
class Path {
  constructor() {
    this.particles = [];
    this.hue = random(100);
  }

  add(position, force) {
    // agregar una nueva partícula con una posición, fuerza y tinte
    this.particles.push(new Particle(position, force, this.hue));
  }
  
  // mostrar camino
  update() {
    for (let i = 0; i < this.particles.length; i++) {
      this.particles[i].update();
    }
  }
  
  // mostrar camino
  display() {
  
    // iterar sobre el camino de atrás hacia adelante
    for (let i = this.particles.length - 1; i >= 0; i--) {
      // si debemos removerlo
      if (this.particles[i].lifespan <= 0) {
        this.particles.splice(i, 1);
      // si no, mostrarlo en pantalla
      } else {
        this.particles[i].display(this.particles[i+1]);
      }
    }  
  }
}

// partículas en el camino
class Particle {
  constructor(position, force, hue) {
    this.position = createVector(position.x, position.y);
    this.velocity = createVector(force.x, force.y);
    this.drag = 0.95;
    this.lifespan = 255;
  }

  update() {
    // muévela
    this.position.add(this.velocity);
    // disminuye su velocidad
    this.velocity.mult(this.drag);
    // hazla más transparente
    this.lifespan--;
  }
  
  // dibujar una partícula y conectarla con una línea
  // dibuja una línea a otra
  display(other) {
    stroke(0, this.lifespan);
    fill(0, this.lifespan/2);
    ellipse(this.position.x,this.position.y, 8, 8);
    // si necesitamos dibujar otra línea
    if (other) {
      line(this.position.x, this.position.y, other.position.x, other.position.y);
    }
  }  
}

