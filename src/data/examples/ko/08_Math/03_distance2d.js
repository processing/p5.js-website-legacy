/*
<<<<<<< HEAD
 * @name 2D 거리
 * @description 이미지 위로 마우스를 움직여, 매트릭스를 흐리게 또는 뚜렷하게 만들어보세요.
 * 각 타원과 마우스 간의 거리에 비례하여 원형의 크기가 조정됩니다.
=======
 * @name Distance 2D
 * @description Move the mouse across the image to obscure
 * and reveal the matrix. Measures the distance from the mouse
 * to each circle and sets the size proportionally.
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
 */
let max_distance;

function setup() {
  createCanvas(710, 400);
  noStroke();
  max_distance = dist(0, 0, width, height);
}

function draw() {
  background(0);

  for (let i = 0; i <= width; i += 20) {
    for (let j = 0; j <= height; j += 20) {
      let size = dist(mouseX, mouseY, i, j);
      size = (size / max_distance) * 66;
      ellipse(i, j, size, size);
    }
  }
}
