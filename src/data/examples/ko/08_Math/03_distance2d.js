/*
 * @name 2D 거리
 * @description 이미지 위로 마우스를 움직여, 매트릭스를 흐리게 또는 뚜렷하게 만들어보세요.
 * 각 타원과 마우스 간의 거리에 비례하여 원형의 크기가 조정됩니다.
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
