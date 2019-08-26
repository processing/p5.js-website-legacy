/*
 * @name Onda de ruido
 * @description Uso de ruido Perlin para generar un patrón tipo onda.
 * Original por Daniel Shiffman.
 */
let yoff = 0.0; // Segunda dimensión del ruido Perlin

function setup() {
  createCanvas(710, 400);
}

function draw() {
  background(51);

  fill(255);
  // Dibujaremos un polígono a partir de los puntos de la onda
  beginShape();

  let xoff = 0; // Opción #1: ruido 2D
  // let xoff = yoff; // Opción #2: ruido 1D

  // Iterar sobre los pixeles horizontales
  for (let x = 0; x <= width; x += 10) {
    // Calcular un valor de y según el ruido, escalar según

    // Opción #1: ruido 2D
    let y = map(noise(xoff, yoff), 0, 1, 200, 300);

    // Opción #2: ruido 1D
    // let y = map(noise(xoff), 0, 1, 200,300);

    // Definir el vértice
    vertex(x, y);
    // Incrementar la dimensión x para el ruido
    xoff += 0.05;
  }
  // Incrementar la dimensión y para el ruido
  yoff += 0.01;
  vertex(width, height);
  vertex(0, height);
  endShape(CLOSE);
}
