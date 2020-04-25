/*
 * @name 기울어진 3D상자
 * @description 모바일 기기를 이용해 상자를 기울게 만듭니다.
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
