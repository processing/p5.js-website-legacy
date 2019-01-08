/*
 * @name Geometrías
 * @description Existen seis figuras 3D primitivas en p5 en este momento.
 */
function setup() {
  createCanvas(710, 400, WEBGL);
}

function draw() {
  background(250);
  translate(-250 * 2.5, 0, 0);
  normalMaterial();
  push();
  rotateZ(frameCount * 0.01);
  rotateX(frameCount * 0.01);
  rotateY(frameCount * 0.01);
  plane(80);
  pop();
  translate(250, 0, 0);
  push();
  rotateZ(frameCount * 0.01);
  rotateX(frameCount * 0.01);
  rotateY(frameCount * 0.01);
  box(80, 80, 80);
  pop();
  translate(250, 0, 0);
  push();
  rotateZ(frameCount * 0.01);
  rotateX(frameCount * 0.01);
  rotateY(frameCount * 0.01);
  cylinder(80, 80);
  pop();
  translate(250, 0, 0);
  push();
  rotateZ(frameCount * 0.01);
  rotateX(frameCount * 0.01);
  rotateY(frameCount * 0.01);
  cone(80, 80);
  pop();
  translate(250, 0, 0);
  push();
  rotateZ(frameCount * 0.01);
  rotateX(frameCount * 0.01);
  rotateY(frameCount * 0.01);
  torus(80, 20);
  pop();
  translate(250, 0, 0);
  push();
  rotateZ(frameCount * 0.01);
  rotateX(frameCount * 0.01);
  rotateY(frameCount * 0.01);
  sphere(80);
  pop();
}
