/*
 * @name 기본 조형
 * @description 기본 조형을 그리는 함수로는 triangle(),
 * rect(), quad(), ellipse(), 그리고 arc()가 있습니다. 사각형은 rect()로,
 * 원형은 ellipse()로 만들 수 있습니다. 도형의 위치와 크기 조정을 위해
 * 각 함수들의 괄호 안 인수들을 반드시 지정해야합니다.
 */
function setup() {
  // 캔버스 크기를 너비 720픽셀, 높이 720픽셀로 설정
  createCanvas(720, 400);
  background(0);
  noStroke();

  fill(204);
  triangle(18, 18, 18, 360, 81, 360);

  fill(102);
  rect(81, 81, 63, 63);

  fill(204);
  quad(189, 18, 216, 18, 216, 360, 144, 360);

  fill(255);
  ellipse(252, 144, 72, 72);

  fill(204);
  triangle(288, 18, 351, 360, 288, 360);

  fill(255);
  arc(479, 300, 280, 280, PI, TWO_PI);
}
