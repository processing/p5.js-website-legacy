/*
<<<<<<< HEAD
 * @name 3D 기본 조형
 * @frame 720,400 (optional)
 * @description 3D 오브젝트를 합성 공간에 수학적으로 배치하기.
 * box()와 sphere()함수는 최소 한 개의 인수를 사용하여 그 크기를 조정할 수 있습니다.
 * 도형의 위치는 translate()함수를 통해 조정할 수 있습니다.
=======
 * @name 3D Primitives
 * @frame 720,400 (optional)
 * @description Placing mathematically 3D objects in synthetic space.
 * The box() and sphere() functions take at least one parameter to specify their
 * size. These shapes are positioned using the translate() function.
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
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
