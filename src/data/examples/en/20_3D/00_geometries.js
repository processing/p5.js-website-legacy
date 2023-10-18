/*
 * @name Geometries
 * @arialabel Seven 3D shapes in neon gradient rotating on a white background. Shapes include cube, cylinder, ring, pyramid, sphere, plane, and ellipsoid.
 * @description There are seven 3D primitives in p5 now.
 */

function setup() {
  createCanvas(710, 400, WEBGL);

  describe(
    'a 3d example containing seven primitive objects, a plane, box, cylinder, cone, torus, sphere, and ellipsoid.'
  );
}

function draw() {
  background(250);

  normalMaterial();
  push();
  translate(-240, -100, 0);
  rotateZ(frameCount * 0.01);
  rotateX(frameCount * 0.01);
  rotateY(frameCount * 0.01);
  plane(70);
  pop();

  push();
  translate(0, -100, 0);
  rotateZ(frameCount * 0.01);
  rotateX(frameCount * 0.01);
  rotateY(frameCount * 0.01);
  box(70, 70, 70);
  pop();

  push();
  translate(240, -100, 0);
  rotateZ(frameCount * 0.01);
  rotateX(frameCount * 0.01);
  rotateY(frameCount * 0.01);
  cylinder(70, 70);
  pop();

  push();
  translate(-250, 100, 0);
  rotateZ(frameCount * 0.01);
  rotateX(frameCount * 0.01);
  rotateY(frameCount * 0.01);
  cone(50, 70);
  pop();

  push();
  translate(-75, 100, 0);  
  rotateZ(frameCount * 0.01);
  rotateX(frameCount * 0.01);
  rotateY(frameCount * 0.01);
  torus(50, 20);
  pop();

  push();
  translate(100, 100, 0);
  rotateZ(frameCount * 0.01);
  rotateX(frameCount * 0.01);
  rotateY(frameCount * 0.01);
  sphere(50);
  pop();

  push();
  translate(275, 100, 0);
  rotateZ(frameCount * 0.01);
  rotateX(frameCount * 0.01);
  rotateY(frameCount * 0.01);
  ellipsoid(30, 40, 40);
  pop();
}
