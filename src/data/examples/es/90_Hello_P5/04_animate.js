/*
 * @name Animación
 * @description El círculo se mueve
 */
// posición del círculo
let x, y;

function setup() {
  createCanvas(720, 400);
  // empieza en el centro
  x = width / 2;
  y = height;
}

function draw() {
  background(200);

  // dibujar el círculo
  stroke(50);
  fill(100);
  ellipse(x, y, 24, 24);

  // moverse aleatoriamente en el eje x
  x = x + random(-1, 1);
  // mover hacia arriba a velocidad constante
  y = y - 1;

  // reset al fondo
  if (y < 0) {
    y = height;
  }
}
