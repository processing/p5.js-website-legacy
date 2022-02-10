/*
 * @name Mapear
 * @description Utiliza la función map() para tomar cualquier número y escalarlo a un
 * nuevo número que sea más útil para el proyecto en el que estés trabajando.
 * Por ejemplo, usa los números de la posición del ratón para controlar el tamaño o el color de una figura.
 * En este ejemplo, la coordenada x del ratón (números entre 0 y 360) se escalan a nuevos números
 * para definir el color y el tamaño de un círculo.
 */
function setup() {
  createCanvas(720, 400);
  noStroke();
}

function draw() {
  background(0);
  // Escala el valor de mouseX de 0 a 720 a un rango entre 0 y 175
  let c = map(mouseX, 0, width, 0, 175);
  // Escala el valor de mouseX de 0 a 720 a un rango entre 40 y 300
  let d = map(mouseX, 0, width, 40, 300);
  fill(255, c, 0);
  ellipse(width/2, height/2, d, d);
}
