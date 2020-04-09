/*
<<<<<<< HEAD
 * @name 숫자값
 * @frame 720,400
 * @description 숫자값은 소수점과 함께, 또는 없이 사용할 수 있습니다.
 * 보통 "int"라 불리는 정수(integer)는 소수점이 없는 숫자를 말합니다.
 * 실수(float)는 소수점 이하 자릿수를 갖는 부동소수점 숫자를 말합니다.
 */
let a = 0; // "a"를 숫자형 전역 변수로 선언
let b = 0; // "b"를 숫자형 전역 변수로 선언
=======
 * @name Numbers
 * @frame 720,400
 * @description Numbers can be written with or without decimals. An integer
 * (more commonly called an int) is a number without a decimal point. A float
 * is a floating-point number, which means it is a number that has a decimal
 * place.
 */
let a = 0; // Create a global variable "a" of type Number
let b = 0; // Create a global variable "b" of type Number
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753

function setup() {
  createCanvas(720, 400);
  stroke(255);
}

function draw() {
  background(0);

<<<<<<< HEAD
  a = a + 1; // a를 정수 단위로 증가
  b = b + 0.2; // b를 실수 단위로 증가
=======
  a = a + 1; // Increment a with an integer
  b = b + 0.2; //Increment b with a float
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  line(a, 0, a, height / 2);
  line(b, height / 2, b, height);

  if (a > width) {
    a = 0;
  }
  if (b > width) {
    b = 0;
  }
}
