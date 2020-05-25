/*
 * @name Cuerdas Aleatorias
 * @description Acumula cuerdas al azar de un círculo. Cada cuerda es translúcida,
 * de modo que se acumulan para dar la ilusión de una esfera sombreada.
 * Contribución de Aatish Bhatia, inspirado en <a href ="http://inconvergent.net/">Anders Hoff</a>
 */
function setup() {
  createCanvas(400, 400);
  background(255, 255, 255);

  // trazo translúcido usando el valor alfa
  stroke(0, 0, 0, 15);
}

function draw() {
  // trazar dos cuerdas al azar en cada cuadro
  randomChord();
  randomChord();
}

function randomChord() {
  // encontrar un punto aleatorio en un círculo
  let angle1 = random(0, 2 * PI);
  let xpos1 = 200 + 200 * cos(angle1);
  let ypos1 = 200 + 200 * sin(angle1);

  // encontrar otro punto aleatorio en el círculo
  let angle2 = random(0, 2 * PI);
  let xpos2 = 200 + 200 * cos(angle2);
  let ypos2 = 200 + 200 * sin(angle2);

  // trazar una línea entre ellos
  line(xpos1, ypos1, xpos2, ypos2);
}
