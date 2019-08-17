/*
 * @name Onda sinusoidal
 * @description Dibuja una onda sinusoidal simple.
 * Original por Daniel Shiffman.
 */

let xspacing = 16; // Distancia entre posiciones horizontales
let w; // Ancho de la onda entera
let theta = 0.0; // Ángulo inicial en  0
let amplitude = 75.0; // Altura de la onda
let period = 500.0; // Cantidad de pixeles antes de que la onda se repita
let dx; // Valor de incremento en eje x
let yvalues; // Uso de un arreglo para guardar los valores de altura de la onda

function setup() {
  createCanvas(710, 400);
  w = width + 16;
  dx = (TWO_PI / period) * xspacing;
  yvalues = new Array(floor(w / xspacing));
}

function draw() {
  background(0);
  calcWave();
  renderWave();
}

function calcWave() {
  // Incrementar theta (prueba valores distintos de
  // 'velocidad angular' aquí
  theta += 0.02;

  // Por cada valor de x, calcula un valor de y con la función sin()
  let x = theta;
  for (let i = 0; i < yvalues.length; i++) {
    yvalues[i] = sin(x) * amplitude;
    x += dx;
  }
}

function renderWave() {
  noStroke();
  fill(255);
  // Una manera simple de dibujar la onda con una elipse en cada punto
  for (let x = 0; x < yvalues.length; x++) {
    ellipse(x * xspacing, height / 2 + yvalues[x], 16, 16);
  }
}
