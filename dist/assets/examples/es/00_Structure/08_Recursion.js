/*
 *@name Recursión
 *@description Una demonstración de recursión, que significa funciones llamándose a sí mismas.
 * Fíjate cómo la función drawCircle() se llama a sí misma al final del bloque de código.
 * Continúa haciéndolo hasta que la variable "level" es igual a 1.
 */

function setup() {
  createCanvas(720, 560);
  noStroke();
  noLoop();
}

function draw() {
  drawCircle(width / 2, 280, 6);
}

function drawCircle(x, radius, level) {
  const tt = (126 * level) / 4.0;
  fill(tt);
  ellipse(x, height / 2, radius * 2, radius * 2);
  if (level > 1) {
    level = level - 1;
    drawCircle(x - radius / 2, radius / 2, level);
    drawCircle(x + radius / 2, radius / 2, level);
  }
}
