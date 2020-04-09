/*
<<<<<<< HEAD
 * @name 곡선 위 움직이기
 * @frame 720,400
 * @description 이 예제에서, 원들은 y = x^4 곡선을 따라 움직입니다.
 * 마우스를 클릭하여 새로운 위치로 움직이도록 해보세요.
 */

let beginX = 20.0; // 초기 x 좌표
let beginY = 10.0; // 초기 y 좌표
let endX = 570.0; // 최종 x 좌표
let endY = 320.0; // 최종 y 좌표
let distX; // 이동할 X축 거리
let distY; // 이동할 Y축 거리
let exponent = 4; // 곡선 결정
let x = 0.0; // 현재 x 좌표
let y = 0.0; // 현재 y 좌표
let step = 0.01; // 경로를 따른 각 단계별 움직임 크기
let pct = 0.0; // 이동 거리 비율 (0.0과 1.0 사이)
=======
 * @name Moving On Curves
 * @frame 720,400
 * @description In this example, the circles moves along the curve y = x^4.
 * Click the mouse to have it move to a new position.
 */

let beginX = 20.0; // Initial x-coordinate
let beginY = 10.0; // Initial y-coordinate
let endX = 570.0; // Final x-coordinate
let endY = 320.0; // Final y-coordinate
let distX; // X-axis distance to move
let distY; // Y-axis distance to move
let exponent = 4; // Determines the curve
let x = 0.0; // Current x-coordinate
let y = 0.0; // Current y-coordinate
let step = 0.01; // Size of each step along the path
let pct = 0.0; // Percentage traveled (0.0 to 1.0)
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753

function setup() {
  createCanvas(720, 400);
  noStroke();
  distX = endX - beginX;
  distY = endY - beginY;
}

function draw() {
  fill(0, 2);
  rect(0, 0, width, height);
  pct += step;
  if (pct < 1.0) {
    x = beginX + pct * distX;
    y = beginY + pow(pct, exponent) * distY;
  }
  fill(255);
  ellipse(x, y, 20, 20);
}

function mousePressed() {
  pct = 0.0;
  beginX = x;
  beginY = y;
  endX = mouseX;
  endY = mouseY;
  distX = endX - beginX;
  distY = endY - beginY;
}
