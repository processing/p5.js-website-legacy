/*
 * @name Fuerzas
 * @description Demostración de múltiples fuerzas actuando en cuerpos
 * (<a href="http://natureofcode.com">natureofcode.com</a>)
 */
// Demonstración de múltiples fuerzas acutando en
// cuerpos (con clase Mover)
// cuerpos sujetos continuamente a gravedad
// cuerpos sujetos a resistencia de fluidos cuando están en el "agua"

// Cinco cuerpos en movimiento
let movers = [];

// Líquido
let liquid;

function setup() {
  createCanvas(640, 360);
  reset();
  // Crear objeto líquido
  liquid = new Liquid(0, height / 2, width, height / 2, 0.1);
}

function draw() {
  background(127);

  // Dibujar el agua
  liquid.display();

  for (let i = 0; i < movers.length; i++) {

    // ¿Está el objeto Mover dentro del objeto líquido?
    if (liquid.contains(movers[i])) {
      // Calcular fuerza de arrastre
      let dragForce = liquid.calculateDrag(movers[i]);
      // Aplicar fuerza de arrastre a Mover
      movers[i].applyForce(dragForce);
    }

    // Aquí se escala la gravedad según la masa
    let gravity = createVector(0, 0.1*movers[i].mass);
    // Aplicar gravedad
    movers[i].applyForce(gravity);

    // Refrescar y mostrar
    movers[i].update();
    movers[i].display();
    movers[i].checkEdges();
  }

}


function mousePressed() {
  reset();
}

// Reiniciar todos los objetos Mover aleatoriamente
function reset() {
  for (let i = 0; i < 9; i++) {
    movers[i] = new Mover(random(0.5, 3), 40 + i * 70, 0);
  }
}

let Liquid = function(x, y, w, h, c) {
  this.x = x;
  this.y = y;
  this.w = w;
  this.h = h;
  this.c = c;
};

// ¿Está el objeto Mover dentro del objeto líquido?
Liquid.prototype.contains = function(m) {
  let l = m.position;
  return l.x > this.x && l.x < this.x + this.w &&
         l.y > this.y && l.y < this.y + this.h;
};

// Calcular fuerza de arrastre
Liquid.prototype.calculateDrag = function(m) {
  // Magnitud es coeficiente * velocidad al cuadrado
  let speed = m.velocity.mag();
  let dragMagnitude = this.c * speed * speed;

  // Dirección es el inverso de la velocidad
  let dragForce = m.velocity.copy();
  dragForce.mult(-1);

  // Escalar según magnitud
  // dragForce.setMag(dragMagnitude);
  dragForce.normalize();
  dragForce.mult(dragMagnitude);
  return dragForce;
};

Liquid.prototype.display = function() {
  noStroke();
  fill(50);
  rect(this.x, this.y, this.w, this.h);
};

function Mover(m, x, y) {
  this.mass = m;
  this.position = createVector(x, y);
  this.velocity = createVector(0, 0);
  this.acceleration = createVector(0, 0);
}

// Segunda ley de Newton: F = M * A
// ó A = F / M
Mover.prototype.applyForce = function(force) {
  let f = p5.Vector.div(force,this.mass);
  this.acceleration.add(f);
};

Mover.prototype.update = function() {
  // La velocidad es cambiada según la aceleración
  this.velocity.add(this.acceleration);
  // La posición es cambiada según la velocidad
  this.position.add(this.velocity);
  // Borrar aceleración en cada cuadro
  this.acceleration.mult(0);
};

Mover.prototype.display = function() {
  stroke(0);
  strokeWeight(2);
  fill(255, 127);
  ellipse(this.position.x, this.position.y, this.mass * 16, this.mass * 16);
};

// Rebotar contra la parte inferior de la ventana
Mover.prototype.checkEdges = function() {
  if (this.position.y > (height - this.mass * 8)) {
    // Un poco de amortiguamiento al rebotar contra el fondo
    this.velocity.y *= -0.9;
    this.position.y = (height - this.mass * 8);
  }
};
