/*
 * @name Onda sinusoidal
 * @description Dibuja una onda sinusoidal simple.
 * Original por Daniel Shiffman.
 */

var xspacing = 16;    // Distancia entre posiciones horizontales
var w;                // Ancho de la onda entera
var theta = 0.0;      // Ángulo inicial en  0
var amplitude = 75.0; // Altura de la onda
var period = 500.0;   // Cantidad de pixeles antes de que la onda se repita
var dx;               // Valor de incremento en eje x
var yvalues;  // Uso de un arreglo para guardar los valores de altura de la onda

function setup() {
  createCanvas(710, 400);
  w = width+16;
  dx = (TWO_PI / period) * xspacing;
  yvalues = new Array(floor(w/xspacing));
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
  var x = theta;
  for (var i = 0; i < yvalues.length; i++) {
    yvalues[i] = sin(x)*amplitude;
    x+=dx;
  }
}

function renderWave() {
  noStroke();
  fill(255);
  // Una manera simple de dibujar la onda con una elipse en cada punto
  for (var x = 0; x < yvalues.length; x++) {
    ellipse(x*xspacing, height/2+yvalues[x], 16, 16);
  }
}
