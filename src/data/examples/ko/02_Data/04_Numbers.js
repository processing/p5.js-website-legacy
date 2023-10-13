/*
 * @name 숫자값
 * @frame 720,400
 * @description 숫자값은 소수점과 함께, 또는 소수점없이 사용할 수 있습니다.
 * 보통 "int"라 불리는 정수(integer)는 소수점이 없는 숫자를 말합니다.
 * "float"는 소수점 이하 자릿수를 갖는 부동소수점 숫자를 말합니다.
 */
let a = 0; // "a"를 숫자형 전역 변수로 선언
let b = 0; // "b"를 숫자형 전역 변수로 선언

function setup() {
  createCanvas(720, 400);
  stroke(255);
}

function draw() {
  background(0);

  a = a + 1; // a를 정수 단위로 증가
  b = b + 0.2; // b를 부동소수점수 단위로 증가
  line(a, 0, a, height / 2);
  line(b, height / 2, b, height);

  if (a > width) {
    a = 0;
  }
  if (b > width) {
    b = 0;
  }
}
