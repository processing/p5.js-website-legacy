/*
<<<<<<< HEAD
 * @name 무작위 선들
 * @description 원형을 그리는 무작위 선들을 축적합니다.
 * 불투명하게 처리된 선들이 축적될수록 마치 명암이 적용된 구처럼 보입니다.
 * 애티쉬 바티아(Aatish Bhatia) 기여, <a href ="http://inconvergent.net/">앤더스 호프(Anders Hoff)</a>로부터 영감을 받음.
=======
 * @name Random Chords
 * @description Accumulates random chords of a circle. Each chord in translucent
 * so they accumulate to give the illusion of a shaded sphere.
 * Contributed by Aatish Bhatia, inspired by <a href ="http://inconvergent.net/">Anders Hoff</a>
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
 */

function setup() {
  createCanvas(400, 400);
  background(255, 255, 255);

<<<<<<< HEAD
  // 알파값을 활용하여 선의 불투명도 조정
=======
  // translucent stroke using alpha value
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  stroke(0, 0, 0, 15);
}

function draw() {
<<<<<<< HEAD
  // 매 프레임마다 두 개의 선을 무작위로 그린다
=======
  // draw two random chords each frame
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  randomChord();
  randomChord();
}

function randomChord() {
<<<<<<< HEAD
  // 원형 위 점 하나를 무작위로 찾는다
=======
  // find a random point on a circle
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  let angle1 = random(0, 2 * PI);
  let xpos1 = 200 + 200 * cos(angle1);
  let ypos1 = 200 + 200 * sin(angle1);

<<<<<<< HEAD
  // 원형 위 또다른 점 하나를 무작위로 찾는다
=======
  // find another random point on the circle
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  let angle2 = random(0, 2 * PI);
  let xpos2 = 200 + 200 * cos(angle2);
  let ypos2 = 200 + 200 * sin(angle2);

<<<<<<< HEAD
  // 둘 사이에 선을 긋는다
=======
  // draw a line between them
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  line(xpos1, ypos1, xpos2, ypos2);
}
