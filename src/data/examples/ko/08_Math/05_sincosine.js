/*
<<<<<<< HEAD
 * @name 싸인 코싸인
 * @description sin()와 cos() 함수를 이용한 선형적 움직임.
 * 0과 PI*2 사이의 숫자(TWO_PI의 경우, 약 6.28)를 위의 함수에 넣으면
 * -1과 1 사이의 값이 반환됩니다.
 * 이러한 반환값은 더 큰 움직임을 만드는 척도로서 쓰입니다.
=======
 * @name Sine Cosine
 * @description Linear movement with sin() and cos().
 * Numbers between 0 and PI*2 (TWO_PI which angles roughly 6.28)
 * are put into these functions and numbers between -1 and 1 are returned.
 * These values are then scaled to produce larger movements.
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
 */
let angle1 = 0;
let angle2 = 0;
let scalar = 70;

function setup() {
  createCanvas(710, 400);
  noStroke();
  rectMode(CENTER);
}

function draw() {
  background(0);

  let ang1 = radians(angle1);
  let ang2 = radians(angle2);

  let x1 = width / 2 + scalar * cos(ang1);
  let x2 = width / 2 + scalar * cos(ang2);

  let y1 = height / 2 + scalar * sin(ang1);
  let y2 = height / 2 + scalar * sin(ang2);

  fill(255);
  rect(width * 0.5, height * 0.5, 140, 140);

  fill(0, 102, 153);
  ellipse(x1, height * 0.5 - 120, scalar, scalar);
  ellipse(x2, height * 0.5 + 120, scalar, scalar);

  fill(255, 204, 0);
  ellipse(width * 0.5 - 120, y1, scalar, scalar);
  ellipse(width * 0.5 + 120, y2, scalar, scalar);

  angle1 += 2;
  angle2 += 3;
}
