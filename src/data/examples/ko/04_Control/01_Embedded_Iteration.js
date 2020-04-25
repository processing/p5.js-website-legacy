/*
 * @name for 내장 반복문
 * @description "for" 반복문 구조를 이중 사용하여 2차원 도형을 반복할 수 있습니다.
 */
function setup() {
  createCanvas(720, 360);
  background(0);
  noStroke();

  let gridSize = 35;

  for (let x = gridSize; x <= width - gridSize; x += gridSize) {
    for (let y = gridSize; y <= height - gridSize; y += gridSize) {
      noStroke();
      fill(255);
      rect(x - 1, y - 1, 3, 3);
      stroke(255, 50);
      line(x, y, width / 2, height / 2);
    }
  }
}
