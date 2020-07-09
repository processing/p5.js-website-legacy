/*
 * @name 복수의 조명들
 * @description 한 스케치 위에 여러 종류의 조명을 사용할 수 있습니다.
 * @name Multiple Lights
 * @description All types of lights could be used in one sketch.
 */
function setup() {
  createCanvas(710, 400, WEBGL);
}

function draw() {
  background(0);

  let locX = mouseX - height / 2;
  let locY = mouseY - width / 2;

  ambientLight(50);
  directionalLight(255, 0, 0, 0.25, 0.25, 0);
  pointLight(0, 0, 255, locX, locY, 250);

  push();
  translate(-width / 4, 0, 0);
  rotateZ(frameCount * 0.02);
  rotateX(frameCount * 0.02);
  specularMaterial(250);
  box(100, 100, 100);
  pop();

  translate(width / 4, 0, 0);
  ambientMaterial(250);
  sphere(120, 64);
}
