/*
 * @name Double Random
 * @frame 720,400 (optional)
 * @description Using two random() calls and the point()
 * function to create an irregular sawtooth line.
 * Original by by Ira Greenberg.
 */
let totalPts = 300;
let steps = totalPts + 1;

function setup() {
  createCanvas(710, 400);
  stroke(255);
  frameRate(1);
}

function draw() {
  background(0);
  let rand = 0;
  for (let i = 1; i < steps; i++) {
    point((width / steps) * i, height / 2 + random(-rand, rand));
    rand += random(-5, 5);
  }
}
