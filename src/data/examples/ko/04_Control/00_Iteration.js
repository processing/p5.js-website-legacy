/*
<<<<<<< HEAD
 * @name for 반복문
 * @description "for"구조를 사용하여 반복 형식을 만듭니다.
=======
 * @name Iteration
 * @description Iteration with a "for" structure to construct repetitive forms.
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
 */
let y;
let num = 14;

function setup() {
  createCanvas(720, 360);
  background(102);
  noStroke();

<<<<<<< HEAD
  // 흰색 막대기들 그리기
=======
  // Draw white bars
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  fill(255);
  y = 60;
  for (let i = 0; i < num / 3; i++) {
    rect(50, y, 475, 10);
    y += 20;
  }

<<<<<<< HEAD
  // 회색 막대기들
=======
  // Gray bars
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  fill(51);
  y = 40;
  for (let i = 0; i < num; i++) {
    rect(405, y, 30, 10);
    y += 20;
  }
  y = 50;
  for (let i = 0; i < num; i++) {
    rect(425, y, 30, 10);
    y += 20;
  }

<<<<<<< HEAD
  // 얇은 선들
=======
  // Thin lines
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  y = 45;
  fill(0);
  for (let i = 0; i < num - 1; i++) {
    rect(120, y, 40, 1);
    y += 20;
  }
}
