/*
 * @name 팔모양
 * @description 이 예제는 변형 행렬을 사용하여 팔모양을 만듭니다.
 * 각 선분의 각도는 mouseX 및 mouseY 위치로 조정됩니다.
 * 첫 번째 선분에 적용된 변형은 두 번째 선분에도 적용됩니다.
 * 두 선분 모두 동일한 push() 및 pop() 행렬 그룹에 속하기 때문입니다.
 */

let x, y;
let angle1 = 0.0;
let angle2 = 0.0;
let segLength = 100;

function setup() {
  createCanvas(720, 400);
  strokeWeight(30);

  // 반투명한 선 그리기
  stroke(255, 160);

  // 팔의 "어깨" 위치를 캔버스 중앙에 위치시키기
  x = width * 0.5;
  y = height * 0.5;
}

function draw() {
  background(0);

  // 마우스 위치에 따라 선분의 각도 바꾸기
  angle1 = (mouseX / float(width) - 0.5) * -TWO_PI;
  angle2 = (mouseY / float(height) - 0.5) * PI;

  // push와 pop을 사용해 변형을 담기
  // 사용자 정의 함수를 사용해 선분을 그려도
  // 변형 내용이 축적되는 걸 볼 수 있습니다.
  push();
  segment(x, y, angle1);
  segment(segLength, 0, angle2);
  pop();
}

// 선분을 그리기 위한 사용자 정의 함수
function segment(x, y, a) {
  translate(x, y);
  rotate(a);
  line(0, 0, segLength, 0);
}
