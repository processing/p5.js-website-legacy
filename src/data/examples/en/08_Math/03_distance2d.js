/*
 * @name Distance 2D
 * @description Move the mouse across the image to obscure
 * and reveal the matrix. Measures the distance from the mouse
 * to each circle and sets the size proportionally.
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
