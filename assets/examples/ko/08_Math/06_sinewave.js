/*
 * @name 사인파
 * @description 간단한 사인파를 만듭니다. 
 * 원본 제작: 다니엘 쉬프만(Daniel Shiffman)
 */

let xspacing = 16; // 각 도형들 간의 가로 거리
let w; // 전체 파형의 너비
let theta = 0.0; // 시작 각도 0
let amplitude = 75.0; // 파형의 높이
let period = 500.0; // 파형이 반복되기 전까지 생성되는 픽셀 개수
let dx; // x 증가값
let yvalues; // 파형의 최고 높이를 저장하기 위한 배열

function setup() {
  createCanvas(710, 400);
  w = width + 16;
  dx = (TWO_PI / period) * xspacing;
  yvalues = new Array(floor(w / xspacing));
}

function draw() {
  background(0);
  calcWave();
  renderWave();
}

function calcWave() {
  // 세타값(theta) 증가 (다른 값을 넣어 각속도를 조정해보세요)
  theta += 0.02;

  // 매 x값마다 싸인 함수를 이용해 y값을 계산
  let x = theta;
  for (let i = 0; i < yvalues.length; i++) {
    yvalues[i] = sin(x) * amplitude;
    x += dx;
  }
}

function renderWave() {
  noStroke();
  fill(255);
  // 각 위치에 지정된 타원형으로 파형을 그릴 수 있는 간단한 방법
  for (let x = 0; x < yvalues.length; x++) {
    ellipse(x * xspacing, height / 2 + yvalues[x], 16, 16);
  }
}
