/*
 * @name Distancia 2D
 * @description Mueve el ratón a lo largo de la imagen para oscurecer
 * y revelar la matriz. Mide la distancia desde el ratón hasta cada cuadrado y define su tamaño proporcionalmente.
 */
let max_distance;

function setup() {
  createCanvas(710, 400);
  noStroke();
  max_distance = dist(0, 0, width, height);
}

function draw() {
  background(0);

  for (let i = 0; i <= width; i += 20) {
    for (let j = 0; j <= height; j += 20) {
      let size = dist(mouseX, mouseY, i, j);
      size = (size / max_distance) * 66;
      ellipse(i, j, size, size);
    }
  }
}
