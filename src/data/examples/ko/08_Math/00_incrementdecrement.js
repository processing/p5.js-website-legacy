/*
 * @name 증가와 감소
 * @description "a++"는 "a = a + 1"와 같은 표현입니다.
 * "a--"는 "a = a - 1"과 같은 표현입니다.
 */
let a;
let b;
let direction;

function setup() {
  createCanvas(710, 400);
  colorMode(RGB, width);
  a = 0;
  b = width;
  direction = true;
  frameRate(30);
}

function draw() {
  a++;
  if (a > width) {
    a = 0;
    direction = !direction;
  }
  if (direction === true) {
    stroke(a);
  } else {
    stroke(width - a);
  }
  line(a, 0, a, height / 2);

  b--;
  if (b < 0) {
    b = width;
  }
  if (direction == true) {
    stroke(width - b);
  } else {
    stroke(b);
  }
  line(b, height / 2 + 1, b, height);
}
