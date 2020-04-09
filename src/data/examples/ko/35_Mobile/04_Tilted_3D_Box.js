/*
<<<<<<< HEAD
 * @name 기울어진 3D상자
 * @description 모바일 기기를 이용해 상자를 기울게 만듭니다.
=======
 * @name Tilted 3D Box
 * @description Use mobile to tilt a box
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
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
