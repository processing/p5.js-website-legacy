/*
 * @name 간단한 도형들
 * @description 이 예제는 원, 사각형, 삼각형, 그리고 꽃 모양을 포함합니다.
 */
function setup() {
  // 캔버스 만들기
  createCanvas(720, 400);
  background(200);

  // 색상 설정하기
  fill(204, 101, 192, 127);
  stroke(127, 63, 120);

  // 사각형 한 개
  rect(40, 120, 120, 40);
  // 타원 한 개
  ellipse(240, 240, 80, 80);
  // 삼각형 한 개
  triangle(300, 100, 320, 100, 310, 80);

  // 간단한 꽃 그리기
  translate(580, 200);
  noStroke();
  for (let i = 0; i < 10; i ++) {
    ellipse(0, 30, 20, 80);
    rotate(PI/5);
  }
}
