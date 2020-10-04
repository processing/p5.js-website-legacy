/*
 * @name 매핑(map)
 * @description map()함수를 통해 그 어떠한 숫자든 여러분의 프로젝트에 더 많은 도움을 줄
 * 숫자로 매핑할 수 있습니다.
 * 예를 들어, 마우스 위치값을 사용하여 도형의 크기와 색상을 조정할 수 있습니다.
 * 이 예제에서는 마우스의 x 좌표(0과 360사이의 숫자)가 원형의 색상과 크기를 정의하는 새로운 숫자들로 처리됩니다.
 */
function setup() {
  createCanvas(720, 400);
  noStroke();
}

function draw() {
  background(0);
  // 0부터 720에 이르는 mouseX 값을 0부터 175의 범위로 조정
  let c = map(mouseX, 0, width, 0, 175);
  // 0부터 720에 이르는 mouseX 값을 40부터 300의 범위로 조정
  let d = map(mouseX, 0, width, 40, 300);
  fill(255, c, 0);
  ellipse(width/2, height/2, d, d);
}
