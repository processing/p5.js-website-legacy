/*
 * @name 이징(Easing)
 * @description 화면 위로 마우스 커서를 움직이면 기호가 따라옵니다.
 * 애니메이션의 매 프레임 사이에, 프로그램은 기호와 마우스 커서 간의 거리를 계산합니다.
 * 만약 그 거리가 1픽셀보다 크다면, 기호는 현재 위치로부터 커서의 위치를 향해 
 * 일정 거리(0.05)를 이동합니다.
 */
let x = 1;
let y = 1;
let easing = 0.05;

function setup() {
  createCanvas(720, 400);
  noStroke();
}

function draw() {
  background(237, 34, 93);
  let targetX = mouseX;
  let dx = targetX - x;
  x += dx * easing;

  let targetY = mouseY;
  let dy = targetY - y;
  y += dy * easing;

  ellipse(x, y, 66, 66);
}
