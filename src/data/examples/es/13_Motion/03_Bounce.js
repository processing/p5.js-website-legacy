/*
 * @name Rebote
 * @frame 720,400
 * @description Cuando la forma golpea el borde de la ventana, invierte su dirección.
 */

let rad = 60; // El ancho de la forma
let xpos, ypos; // Posición inicial de la forma

let xspeed = 2.8; // La velocidad de la forma
let yspeed = 2.2; // La velocidad de la forma

let xdirection = 1; // Izquierda o derecha
let ydirection = 1; // De arriba a abajo

function setup() {
  createCanvas(720, 400);
  noStroke();
  frameRate(30);
  ellipseMode(RADIUS);
  // Establecer la posición de partida de la forma
  xpos = width / 2;
  ypos = height / 2;
}

function draw() {
  background(102);

  // Actualizar la posición de la forma
  xpos = xpos + xspeed * xdirection;
  ypos = ypos + yspeed * ydirection;

  // Prueba para ver si la forma excede los límites de la pantalla
  // Si lo hace, invierta su dirección multiplicando por -1
  if (xpos > width - rad || xpos < rad) {
    xdirection *= -1;
  }
  if (ypos > height - rad || ypos < rad) {
    ydirection *= -1;
  }

  // Dibuja la forma
  ellipse(xpos, ypos, rad, rad);
}
