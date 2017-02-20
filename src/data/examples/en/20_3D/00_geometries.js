/*
 * @name Geometries
 * @description There are six 3D primitives in p5 now.
 */
function setup(){
  createCanvas(710, 400, WEBGL);
}

function draw(){
  var t = width / 3;
  var w = width / 9;
  background(250);

  // "top" row
  translate(w - width / 2, w - height / 2, 0);
  normalMaterial();
  push();
  rotateZ(frameCount * 0.01);
  rotateX(frameCount * 0.01);
  rotateY(frameCount * 0.01);
  plane(w);
  pop();

  translate(t, 0, 0);
  push();
  rotateZ(frameCount * 0.01);
  rotateX(frameCount * 0.01);
  rotateY(frameCount * 0.01);
  box(w, w, w);
  pop();

  translate(t, 0, 0);
  push();
  rotateZ(frameCount * 0.01);
  rotateX(frameCount * 0.01);
  rotateY(frameCount * 0.01);
  cylinder(w, w);
  pop();

  // "bottom" row
  translate(-2 * t, height / 2, 0);
  push();
  rotateZ(frameCount * 0.01);
  rotateX(frameCount * 0.01);
  rotateY(frameCount * 0.01);
  cone(w, w);
  pop();

  translate(t, 0, 0);
  push();
  rotateZ(frameCount * 0.01);
  rotateX(frameCount * 0.01);
  rotateY(frameCount * 0.01);
  torus(w, 20);
  pop();

  translate(t, 0, 0);
  push();
  rotateZ(frameCount * 0.01);
  rotateX(frameCount * 0.01);
  rotateY(frameCount * 0.01);
  sphere(w);
  pop();
}
