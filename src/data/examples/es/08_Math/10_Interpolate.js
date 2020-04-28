/*
 * @name Interpolación Lineal
 * @frame 720, 400
 * @description Mueve el ratón a través de la pantalla y el símbolo le seguirá.
 * Entre cada fotograma de la animación, la elipse se mueve parte
 * de la distancia (0,05) desde su posición actual hacia el cursor
 * usando la función lerp().
 * Esto es equivalente al uso de Easing en la sección Input, sólo que con lerp() en su lugar...
 */

let x = 0;
let y = 0;

function setup() {
  createCanvas(720, 400);
  noStroke();
}

function draw() {
  background(51);

  // lerp() calcula un número entre dos números en un incremento específico.
  // El parámetro amt (amount) es la cantidad a interpolar entre los dos valores
  // donde 0,0 es igual al primer punto, 0,1 está muy cerca del primer punto, 0,5
  // está a mitad de camino, etc.

  // Aquí estamos moviendo el 5% del camino hacia la ubicación del ratón en cada fotograma
  x = lerp(x, mouseX, 0.05);
  y = lerp(y, mouseY, 0.05);

  fill(255);
  stroke(255);
  ellipse(x, y, 66, 66);
}
