/*
 * @name Moviéndose por Curvas
 * @frame 720,400
 * @description En este ejemplo, los círculos se mueven a lo largo de la curva y = x^4.
 * Haz clic con el ratón para que se mueva a una nueva posición.
 */

let beginX = 20.0; // Coordenada X inicial
let beginY = 10.0; // Coordenada Y inicial
let endX = 570.0; // Coordenada X final
let endY = 320.0; // Coordenada Y final
let distX; // Distancia a moverse en el eje X
let distY; // Distancia a moverse en el eje Y
let exponent = 4; // Determina la curva
let x = 0.0; // Coordenada X actual
let y = 0.0; // Coordenada Y actual
let step = 0.01; // Tamaño de cada paso a lo largo del camino
let pct = 0.0; // Porcentaje viajado (0.0 a 1.0)

function setup() {
  createCanvas(720, 400);
  noStroke();
  distX = endX - beginX;
  distY = endY - beginY;
}

function draw() {
  fill(0, 2);
  rect(0, 0, width, height);
  pct += step;
  if (pct < 1.0) {
    x = beginX + pct * distX;
    y = beginY + pow(pct, exponent) * distY;
  }
  fill(255);
  ellipse(x, y, 20, 20);
}

function mousePressed() {
  pct = 0.0;
  beginX = x;
  beginY = y;
  endX = mouseX;
  endY = mouseY;
  distX = endX - beginX;
  distY = endY - beginY;
}
