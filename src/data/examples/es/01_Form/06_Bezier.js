/*
 * @name Bezier
 * @description Los primeros dos parámetros de la función bezier() especifican
 * el primer punto en la curva y los últimos dos parámetros especifican el último punto.
 * Los parámetros de al medio definen los puntos de control que definen la figura de la curva.
 */
function setup() {
  createCanvas(720, 400);
  stroke(255);
  noFill();
}

function draw() {
  background(0);
  for (let i = 0; i < 200; i += 20) {
    bezier(
      mouseX - i / 2.0,
      40 + i,
      410,
      20,
      440,
      300,
      240 - i / 16.0,
      300 + i / 8.0
    );
  }
}
