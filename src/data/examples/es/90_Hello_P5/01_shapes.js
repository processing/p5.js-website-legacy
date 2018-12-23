/*
 * @name Figuras simples
 * @description Este ejemplo incluye una elipse, un rectángulo, un triángulo y una flor.
 */
function setup() {
  // crear el lienzo
  createCanvas(720, 400);
  background(200);

  // Definir colores
  fill(204, 101, 192, 127);
  stroke(127, 63, 120);

  // Un rectángulo
  rect(40, 120, 120, 40);
  // Una elipse
  ellipse(240, 240, 80, 80);
  // Un triángulo
  triangle(300, 100, 320, 100, 310, 80);

  // Un diseño de una flor simple
  translate(580, 200);
  noStroke();
  for (let i = 0; i < 10; i++) {
    ellipse(0, 30, 20, 80);
    rotate(PI / 5);
  }
}
