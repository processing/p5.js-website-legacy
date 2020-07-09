/*
 * @name 랜덤 선들
 * @description 원형을 그리는 무작위의 선들을 축적합니다.
 * 불투명하게 처리된 선들이 축적될수록 마치 명암이 적용된 구처럼 보입니다.
 * 기여: 애티쉬 바티아(Aatish Bhatia), <a href ="http://inconvergent.net/">앤더스 호프(Anders Hoff)</a>로부터 영감을 받음.
 */

function setup() {
  createCanvas(400, 400);
  background(255, 255, 255);

  // 알파값을 활용하여 선의 불투명도를 조정
  stroke(0, 0, 0, 15);
}

function draw() {
  // 매 프레임마다 두 개의 선을 무작위로 그리기
  randomChord();
  randomChord();
}

function randomChord() {
  // 원형 위 점 하나를 무작위로 찾기
  let angle1 = random(0, 2 * PI);
  let xpos1 = 200 + 200 * cos(angle1);
  let ypos1 = 200 + 200 * sin(angle1);

  // 원형 위 또다른 점 하나를 무작위로 찾기
  let angle2 = random(0, 2 * PI);
  let xpos2 = 200 + 200 * cos(angle2);
  let ypos2 = 200 + 200 * sin(angle2);

  // 둘 사이에 선을 긋기
  line(xpos1, ypos1, xpos2, ypos2);
}
