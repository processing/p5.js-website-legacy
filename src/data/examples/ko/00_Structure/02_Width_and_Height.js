/*
 * @name 너비와 높이
 * @description '너비(width)'와 '높이(height)' 변수들은 createCanvas() 함수에 따라
 * 정의된, 윈도우 화면의 너비 및 높이 값을 담습니다.
 */
function setup() {
  createCanvas(720, 400);
}

function draw() {
  background(127);
  noStroke();
  for (let i = 0; i < height; i += 20) {
    fill(129, 206, 15);
    rect(0, i, width, 10);
    fill(255);
    rect(i, 0, 10, height);
  }
}
