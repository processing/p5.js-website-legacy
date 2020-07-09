/*
 * @name 3D 기본 조형
 * @frame 720,400 (optional)
 * @description 3D 객체를 합성 공간 속에 수학적으로 배치하기.
 * box()와 sphere()함수는 최소 한 개의 매개변수를 사용하여 객체의 크기를 조정합니다.
 * 도형의 위치는 translate()함수를 통해 조정할 수 있습니다.
 */
function setup() {
  createCanvas(710, 400, WEBGL);
}

function draw() {
  background(100);

  noStroke();
  fill(50);
  push();
  translate(-275, 175);
  rotateY(1.25);
  rotateX(-0.9);
  box(100);
  pop();

  noFill();
  stroke(255);
  push();
  translate(500, height * 0.35, -200);
  sphere(300);
  pop();
}
