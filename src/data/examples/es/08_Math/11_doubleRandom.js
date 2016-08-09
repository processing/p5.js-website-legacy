/*
 * @name Doble aleatorio
 * @frame 720,400 (optional)
 * @description Usando dos llamadas a la función random() y a la función point()
 * crea una línea diente de sierra irregular.
 * Original por Ira Greenberg.
 */
var totalPts = 300;
var steps = totalPts + 1;

function setup() {
  createCanvas(710, 400);
  stroke(255);
  frameRate(1);
}

function draw() {
  background(0);
  var rand = 0;
  for  (var i = 1; i < steps; i++) {
    point( (width/steps) * i, (height/2) + random(-rand, rand) );
    rand += random(-5, 5);
  }
}
