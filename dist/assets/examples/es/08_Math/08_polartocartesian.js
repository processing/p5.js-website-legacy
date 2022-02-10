/*
 * @name Polar a cartesiano
 * @description Convierte una coordenada polar (r,theta)
 * a cartesiana (x,y): x = r*cos(theta), y = r*sin(theta)
 * Original por Daniel Shiffman.
 */
let r;

// Ángulo, velocidad angular, aceleración angular
let theta;
let theta_vel;
let theta_acc;

function setup() {
  createCanvas(710, 400);

  // Inicializar todos los valores
  r = height * 0.45;
  theta = 0;
  theta_vel = 0;
  theta_acc = 0.0001;
}

function draw() {
  background(0);

  // Traslada el punto de origen al centro del lienzo
  translate(width / 2, height / 2);

  // Convierte de polar a cartesiano
  let x = r * cos(theta);
  let y = r * sin(theta);

  // Dibuja la elipse en la coordenada cartesiana
  ellipseMode(CENTER);
  noStroke();
  fill(200);
  ellipse(x, y, 32, 32);

  // Applica aceleración y velocidad al ángulo
  // (r permance estático en este ejemplo)
  theta_vel += theta_acc;
  theta += theta_vel;
}
