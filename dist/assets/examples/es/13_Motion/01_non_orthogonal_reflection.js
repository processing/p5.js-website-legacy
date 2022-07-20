/*
 * @name Reflejo no ortogonal
 * @frame 710,400 (optional)
 * @description Este es un puerto de David Blitz del ejemplo "Reflection 1" en processing.org/examples
 */

//Posición del lado izquierdo del suelo
let base1;

//Posición del lado derecho del suelo
let base2;
//La longitud del suelo
//let baseLength;

// Variables relacionadas con el movimiento de la bola
let position;
let velocity;
let r = 6;
let speed = 3.5;

function setup() {
  createCanvas(710, 400);

  fill(128);
  base1 = createVector(0, height - 150);
  base2 = createVector(width, height);
  //createGround();

  //Empezar la elipse en el centro de la parte superior de la pantalla
  position = createVector(width / 2, 0);

  //Calcular la velocidad aleatoria inicial
  velocity = p5.Vector.random2D();
  velocity.mult(speed);
}

function draw() {
  //dibujar el fondo
  fill(0, 12);
  noStroke();
  rect(0, 0, width, height);

  //dibujar la base
  fill(200);
  quad(base1.x, base1.y, base2.x, base2.y, base2.x, height, 0, height);

  //calcular la normal a la base superior
  let baseDelta = p5.Vector.sub(base2, base1);
  baseDelta.normalize();
  let normal = createVector(-baseDelta.y, baseDelta.x);
  let intercept = p5.Vector.dot(base1, normal);

  //dibujar elipse
  noStroke();
  fill(255);
  ellipse(position.x, position.y, r * 2, r * 2);

  //mover elipse
  position.add(velocity);

  //vector de incidencia normalizado
  incidence = p5.Vector.mult(velocity, -1);
  incidence.normalize();

  // detectar y gestionar la colisión con la base
  if (p5.Vector.dot(normal, position) > intercept) {
    //calcular el producto escalar del vector incidente y la parte superior de la base
    let dot = incidence.dot(normal);

    //calcular el vector del reflejo
    //asignar el vector de reflejo al vector de dirección
    velocity.set(
      2 * normal.x * dot - incidence.x,
      2 * normal.y * dot - incidence.y,
      0
    );
    velocity.mult(speed);

    // dibujar la base superior normal en el punto de colisión
    stroke(255, 128, 0);
    line(
      position.x,
      position.y,
      position.x - normal.x * 100,
      position.y - normal.y * 100
    );
  }
  //}

  // detectar la colisión límite
  // derecha
  if (position.x > width - r) {
    position.x = width - r;
    velocity.x *= -1;
  }
  // izquierda
  if (position.x < r) {
    position.x = r;
    velocity.x *= -1;
  }
  // arriba
  if (position.y < r) {
    position.y = r;
    velocity.y *= -1;

    //aleatorizar la parte superior de la base
    base1.y = random(height - 100, height);
    base2.y = random(height - 100, height);
  }
}
