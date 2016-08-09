/*
 * @name Onda aditiva
 * @description Crea una onda más compleja sumando otras dos ondas.
 * Original por Daniel Shiffman
 */
var xspacing = 8;   // Distancia entre cada posición en eje x
var w;              // Ancho de la onda
var maxwaves = 4;   // número total de ondas a sumarse

var theta = 0.0;
var amplitude = new Array(maxwaves);   // Altura de la onda
// Valor para incrementar x, a ser calculado como
// una función de periodo y espaciado en x
var dx = new Array(maxwaves);
// Uso de un arreglo para almacenar los valores de altura
// de la onda (no es del todo necesario)
var yvalues;

function setup() {
  createCanvas(710, 400);
  frameRate(30);
  colorMode(RGB, 255, 255, 255, 100);
  w = width + 16;

  for (var i = 0; i < maxwaves; i++) {
    amplitude[i] = random(10,30);
    var period = random(100,300); // Número de pixeles antes que la onda se repita
    dx[i] = (TWO_PI / period) * xspacing;
  }

  yvalues = new Array(floor(w/xspacing));
}

function draw() {
  background(0);
  calcWave();
  renderWave();
}

function calcWave() {
  // Incrementar theta (pruebas otros valores
  // de 'velocidad angular' aquí
  theta += 0.02;

  // Hacer cero todos los valores de altura
  for (var i = 0; i < yvalues.length; i++) {
    yvalues[i] = 0;
  }

  // Valores acumulados de altura de onda
  for (var j = 0; j < maxwaves; j++) {
    var x = theta;
    for (var i = 0; i < yvalues.length; i++) {
      // Cada otra onda es coseno en vez de seno
      if (j % 2 == 0)  yvalues[i] += sin(x)*amplitude[j];
      else yvalues[i] += cos(x)*amplitude[j];
      x+=dx[j];
    }
  }
}

function renderWave() {
  // Una manera simple de dibujar la onda, con una elipse en cada punto
  noStroke();
  fill(255,50);
  ellipseMode(CENTER);
  for (var x = 0; x < yvalues.length; x++) {
    ellipse(x*xspacing,width/2+yvalues[x],16,16);
  }
}
