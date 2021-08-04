/*
 * @name Follow 2
 * @arialabel Two long ovals connected at the end. The user’s mouse is attached to the end of one of the ovals and when the mouse moves, the two ovals move as well
 * @frame 710,400
 * @description A two-segmented arm follows the cursor position. The relative
 * angle between the segments is calculated with atan2() and the position
 * calculated with sin() and cos(). Based on code from Keith Peters.
 */
let x = [0, 0],
  y = [0, 0],
  segLength = 50;

function setup() {
  createCanvas(710, 400);
  strokeWeight(20.0);
  stroke(255, 100);
}

function draw() {
  background(0);
  dragSegment(0, mouseX, mouseY);
  dragSegment(1, x[0], y[0]);
}

function dragSegment(i, xin, yin) {
  const dx = xin - x[i];
  const dy = yin - y[i];
  const angle = atan2(dy, dx);
  x[i] = xin - cos(angle) * segLength;
  y[i] = yin - sin(angle) * segLength;
  segment(x[i], y[i], angle);
}

function segment(x, y, a) {
  push();
  translate(x, y);
  rotate(a);
  line(0, 0, segLength, 0);
  pop();
}
