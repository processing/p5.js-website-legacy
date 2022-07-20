/*
 *@name Functions
 *@arialabel Three targets are created in the shape of black circles. There is a gradient from white to black from the center of the circle to the outer edge.
 *@description The drawTarget() function makes it easy to draw many distinct
 *targets. Each call to drawTarget() specifies the position, size, and number of
 *rings for each target.
 */

function setup() {
  createCanvas(720, 400);
  background(51);
  noStroke();
  noLoop();
}

function draw() {
  drawTarget(width * 0.25, height * 0.4, 200, 4);
  drawTarget(width * 0.5, height * 0.5, 300, 10);
  drawTarget(width * 0.75, height * 0.3, 120, 6);
}

function drawTarget(xloc, yloc, size, num) {
  const grayvalues = 255 / num;
  const steps = size / num;
  for (let i = 0; i < num; i++) {
    fill(i * grayvalues);
    ellipse(xloc, yloc, size - i * steps, size - i * steps);
  }
}
