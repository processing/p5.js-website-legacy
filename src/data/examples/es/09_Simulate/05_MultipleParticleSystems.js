/*
 * @name Múltiples sistemas de partículas
 * @description Hacer click con el ratón para generar una ráfaga de partículas en la posición del ratón.<br>Cada ráfaga es una instancia de un sistema de partículas con objetos Particle y CrazyParticle (una subclase de Particle).<br>Notar el uso de Herencia y Polimorfismo.<br>
 * Original por Daniel Shiffman.
 */
let systems;

function setup() {
  createCanvas(710, 400);
  systems = [];
}

function draw() {
  background(51);
  background(0);
  for (i = 0; i < systems.length; i++) {
    systems[i].run();
    systems[i].addParticle();
  }
  if (systems.length == 0) {
    fill(255);
    textAlign(CENTER);
    textSize(32);
    text("click mouse to add particle systems", width / 2, height / 2);
  }
}

function mousePressed() {
  this.p = new ParticleSystem(createVector(mouseX, mouseY));
  systems.push(p);
}

// Una clase simple de Particle
let Particle = function(position) {
  this.acceleration = createVector(0, 0.05);
  this.velocity = createVector(random(-1, 1), random(-1, 0));
  this.position = position.copy();
  this.lifespan = 255.0;
};

Particle.prototype.run = function() {
  this.update();
  this.display();
};

// Método para actualizar posición
Particle.prototype.update = function(){
  this.velocity.add(this.acceleration);
  this.position.add(this.velocity);
  this.lifespan -= 2;
};

// Método para mostrar en pantalla
Particle.prototype.display = function () {
  stroke(200, this.lifespan);
  strokeWeight(2);
  fill(127, this.lifespan);
  ellipse(this.position.x, this.position.y, 12, 12);
};

// ¿Sigue siendo útil la partícula?
Particle.prototype.isDead = function () {
  if (this.lifespan < 0) {
    return true;
  } else {
    return false;
  }
};

let ParticleSystem = function (position) {
  this.origin = position.copy();
  this.particles = [];
};

ParticleSystem.prototype.addParticle = function () {
  // Añadir o una Particle o una CrazyParticle al sistema
  if (int(random(0, 2)) == 0) {
    p = new Particle(this.origin);
  }
  else {
    p = new CrazyParticle(this.origin);
  }
  this.particles.push(p);
};

ParticleSystem.prototype.run = function () {
  for (let i = this.particles.length - 1; i >= 0; i--) {
    let p = this.particles[i];
    p.run();
    if (p.isDead()) {
      this.particles.splice(i, 1);
    }
  }
};

// Una subclase de Particle
function CrazyParticle(origin) {
  // Llamar al constructor padre, asegurándose (usando  Función#llamada)
  // que "this" está configurado correctamente durante la llamada
  Particle.call(this, origin);

  // Inicializar nustras propiedades añadidas
  this.theta = 0.0;
};

// Crear un objeto Crazy.prototype que hereda de Particle.prototype.
// Nota: un error común aquí es usar "new Particle()" para crear el
// Crazy.prototype. Es incorrecto por muchas razones,
// como que no tenemos qué darle a Particle para el argumento de "origin"
// El lugar correcto para llamar a Particle es arriba, donde lo llamamos desde Crazy.
CrazyParticle.prototype = Object.create(Particle.prototype); // Ver nota abajo

// Set the "constructor" property to refer to CrazyParticle
CrazyParticle.prototype.constructor = CrazyParticle;

// Notice we don't have the method run() here; it is inherited from Particle

// This update() method overrides the parent class update() method
CrazyParticle.prototype.update=function() {
  Particle.prototype.update.call(this);
  // Incrementar rotación basado en la velocidad horizontal
  this.theta += (this.velocity.x * this.velocity.mag()) / 10.0;
}

// Este método display() anula el método display() de la clase padre
CrazyParticle.prototype.display=function() {
  // Render de la elipse como una partícula regular
  Particle.prototype.display.call(this);
  // Añadir línea giratoria
  push();
  translate(this.position.x, this.position.y);
  rotate(this.theta);
  stroke(255, this.lifespan);
  line(0, 0, 25, 0);
  pop();
}
