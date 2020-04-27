/*
 * @name 팔닿기 2
 * @frame 710,400
 * @description 팔 모양이 마우스 위치를 따라다닙니다. 팔의 각도는 atan2()로 계산됩니다.
 * 이 예제는 키스 피터스(Keith Peters)가 제작한 코드를 기반으로 합니다.
 */
let numSegments = 10,
  x = [],
  y = [],
  angle = [],
  segLength = 26,
  targetX,
  targetY;

for (let i = 0; i < numSegments; i++) {
  x[i] = 0;
  y[i] = 0;
  angle[i] = 0;
}

function setup() {
  createCanvas(710, 400);
  strokeWeight(20);
  stroke(255, 100);

  x[x.length - 1] = width / 2; // 기본 x좌표 설정
  y[x.length - 1] = height; // 기본 y좌표 설정
}

function draw() {
  background(0);

  reachSegment(0, mouseX, mouseY);
  for (let i = 1; i < numSegments; i++) {
    reachSegment(i, targetX, targetY);
  }
  for (let j = x.length - 1; j >= 1; j--) {
    positionSegment(j, j - 1);
  }
  for (let k = 0; k < x.length; k++) {
    segment(x[k], y[k], angle[k], (k + 1) * 2);
  }
}

function positionSegment(a, b) {
  x[b] = x[a] + cos(angle[a]) * segLength;
  y[b] = y[a] + sin(angle[a]) * segLength;
}

function reachSegment(i, xin, yin) {
  const dx = xin - x[i];
  const dy = yin - y[i];
  angle[i] = atan2(dy, dx);
  targetX = xin - cos(angle[i]) * segLength;
  targetY = yin - sin(angle[i]) * segLength;
}

function segment(x, y, a, sw) {
  strokeWeight(sw);
  push();
  translate(x, y);
  rotate(a);
  line(0, 0, segLength, 0);
  pop();
}
