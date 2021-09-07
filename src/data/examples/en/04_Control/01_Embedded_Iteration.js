/*
 * @name Embedded Iteration
 * @arialabel Rays emerge from the center of the screen to the edges. There is also a square grid of white circles over the window
 * @description Embedding "for" structures allows repetition in two dimensions.
 */
function setup() {
  createCanvas(720, 360);
  background(0);
  noStroke();

  let gridSize = 35;

  for (let x = gridSize; x <= width - gridSize; x += gridSize) {
    for (let y = gridSize; y <= height - gridSize; y += gridSize) {
      noStroke();
      fill(255);
      rect(x - 1, y - 1, 3, 3);
      stroke(255, 50);
      line(x, y, width / 2, height / 2);
    }
  }
}
