/*
 * @name Caja 3D
 * @description Usar dispositivo móvil para inclinar una caja
 */
function setup() {
  createCanvas(displayWidth, displayHeight, WEBGL);
}

function draw() {
  background(250);
  normalMaterial();
  rotateX(accelerationX * 0.01);
  rotateY(accelerationY * 0.01);
  box(100, 100, 100);
}
