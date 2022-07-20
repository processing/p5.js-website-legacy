/*
 * @name Triangle Strip
 * @arialabel A ring of white triangles form a heptagon on the grey background. When a user drags their mouse from left to right, the number of triangles increase and create a smoother, circular ring 
 * @description Example by Ira Greenberg. Generate a closed ring using the
 * vertex() function and beginShape(TRIANGLE_STRIP) mode. The outsideRadius
 * and insideRadius variables control ring's radii respectively.
 */
let x;
let y;
let outsideRadius = 150;
let insideRadius = 100;

function setup() {
  createCanvas(720, 400);
  background(204);
  x = width / 2;
  y = height / 2;
}

function draw() {
  background(204);

  let numPoints = int(map(mouseX, 0, width, 6, 60));
  let angle = 0;
  let angleStep = 180.0 / numPoints;

  beginShape(TRIANGLE_STRIP);
  for (let i = 0; i <= numPoints; i++) {
    let px = x + cos(radians(angle)) * outsideRadius;
    let py = y + sin(radians(angle)) * outsideRadius;
    angle += angleStep;
    vertex(px, py);
    px = x + cos(radians(angle)) * insideRadius;
    py = y + sin(radians(angle)) * insideRadius;
    vertex(px, py);
    angle += angleStep;
  }
  endShape();
}
