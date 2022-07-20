/*
 * @name Figuras primitivas
 * @description Las funciones primitivas de figuras básicas son triangle(),
 * rect(), quad(), ellipse() y arc(). Rectángulos y cuadrados se construyen con rect()
 * y círculos y elipses con ellipse(). Cada una de estas funciones requiere
 * un número de parámetros para determinar la posición y tamaño de la figura.
 */
function setup() {
  // Define un lienzo de 720 pixeles de ancho y 400 de alto
  createCanvas(720, 400);
  background(0);
  noStroke();

  fill(204);
  triangle(18, 18, 18, 360, 81, 360);

  fill(102);
  rect(81, 81, 63, 63);

  fill(204);
  quad(189, 18, 216, 18, 216, 360, 144, 360);

  fill(255);
  ellipse(252, 144, 72, 72);

  fill(204);
  triangle(288, 18, 351, 360, 288, 360);

  fill(255);
  arc(479, 300, 280, 280, PI, TWO_PI);
}
