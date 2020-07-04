/*
 * @name 가속도 색상
 * @description deviceMoved()를 사용해 모바일 기기의 회전을 감지합니다. 배경의 RGB 색상값은 각각 accelerationX, accelerationY, accelerationZ 값에 매핑됩니다.
 */

let r, g, b;

function setup() {
  createCanvas(displayWidth, displayHeight);
  r = random(50, 255);
  g = random(0, 200);
  b = random(50, 255);
}

function draw() {
  background(r, g, b);
  console.log('draw');
}

function deviceMoved() {
  r = map(accelerationX, -90, 90, 100, 175);
  g = map(accelerationY, -90, 90, 100, 200);
  b = map(accelerationZ, -90, 90, 100, 200);
}
