/*
<<<<<<< HEAD
 * @name 혼합 라이트
 * @frame 710,400 (optional)
 * @description 세 개의 다른 조명과 함께 박스를 보여줍니다.
=======
 * @name Mixture
 * @frame 710,400 (optional)
 * @description Display a box with three different kinds of lights.
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
 */
function setup() {
  createCanvas(710, 400, WEBGL);
  noStroke();
}

function draw() {
  background(0);

<<<<<<< HEAD
  // 우측에서 비추는 오렌지색 포인트 라이트
  pointLight(150, 100, 0, 500, 0, 200);

  // 좌측에서 비추는 파랑색 디렉셔널 라이트
  directionalLight(0, 102, 255, -1, 0, 0);

  // 정면에서 비추는 노랑색 스포트라이트
=======
  // Orange point light on the right
  pointLight(150, 100, 0, 500, 0, 200);

  // Blue directional light from the left
  directionalLight(0, 102, 255, -1, 0, 0);

  // Yellow spotlight from the front
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  pointLight(255, 255, 109, 0, 0, 300);

  rotateY(map(mouseX, 0, width, 0, PI));
  rotateX(map(mouseY, 0, height, 0, PI));
  box(200);
}
