/*
 * @name 상대성
 * @description 각 색상은 다른 색상과의 관계 속에서 인식됩니다. 
 * 상단과 하단의 막대기들은 둘 다 동일한 색상 요소들을 갖지만,
 * 색상 요소들의 배열에 따라 마치 다른 색조를 갖는 듯 보입니다.
 */
let a, b, c, d, e;

function setup() {
  createCanvas(710, 400);
  noStroke();
  a = color(165, 167, 20);
  b = color(77, 86, 59);
  c = color(42, 106, 105);
  d = color(165, 89, 20);
  e = color(146, 150, 127);
  noLoop(); // 반복없이 한번만 그리기
}

function draw() {
  drawBand(a, b, c, d, e, 0, width / 128);
  drawBand(c, a, d, b, e, height / 2, width / 128);
}

function drawBand(v, w, x, y, z, ypos, barWidth) {
  let num = 5;
  let colorOrder = [v, w, x, y, z];
  for (let i = 0; i < width; i += barWidth * num) {
    for (let j = 0; j < num; j++) {
      fill(colorOrder[j]);
      rect(i + j * barWidth, ypos, barWidth, height / 2);
    }
  }
}
