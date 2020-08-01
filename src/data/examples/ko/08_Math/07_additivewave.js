/*
 * @name 파형 추가
 * @description 두 개의 파형을 합쳐 좀 더 복잡한 파도 모양을 만듭니다.
 * 원본 제작: 다니엘 쉬프만(Daniel Shiffman)
 */
let xspacing = 8; // 각 타원 간 가로 거리
let w; // 전체 파형의 너비
let maxwaves = 4; // 더해진 파형들의 전체 개수

let theta = 0.0;
let amplitude = new Array(maxwaves); // 파형의 높이
// X를 증가하는 값으로, period와 xspacing로 계산됨
let dx = new Array(maxwaves);
// 파형의 최고 높이를 저장하기 위한 배열 (반드시 필요한 건 아님)
let yvalues;

function setup() {
  createCanvas(710, 400);
  frameRate(30);
  colorMode(RGB, 255, 255, 255, 100);
  w = width + 16;

  for (let i = 0; i < maxwaves; i++) {
    amplitude[i] = random(10, 30);
    let period = random(100, 300); // 파형이 반복되기 전까지 생성되는 픽셀 갯수
    dx[i] = (TWO_PI / period) * xspacing;
  }

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

  // 모든 높이값을 0으로 설정
  for (let i = 0; i < yvalues.length; i++) {
    yvalues[i] = 0;
  }

  // 파형 높이값 축적하기
  for (let j = 0; j < maxwaves; j++) {
    let x = theta;
    for (let i = 0; i < yvalues.length; i++) {
      // 매번 모든 파형들은 싸인 대신 코싸인으로 처리
      if (j % 2 == 0) yvalues[i] += sin(x) * amplitude[j];
      else yvalues[i] += cos(x) * amplitude[j];
      x += dx[j];
    }
  }
}

function renderWave() {
  // 각 위치에 지정된 타원형으로 파형을 그릴 수 있는 간단한 방법
  noStroke();
  fill(255, 50);
  ellipseMode(CENTER);
  for (let x = 0; x < yvalues.length; x++) {
    ellipse(x * xspacing, width / 2 + yvalues[x], 16, 16);
  }
}
