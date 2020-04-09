/*
<<<<<<< HEAD
 * @name 치환(Translate)
 * @description translate() 함수는 객체를 화면 내 어떤 위치로든 이동하게 합니다.
 * 그 첫 번째 매개 변수는 x축의 오프셋(offset)을,
 * 두 번째 매개 변수는 y축의 오프셋을 지정합니다.
 * 이 예제는 이러한 치환들이 축적되는 것을 보여줍니다.
=======
 * @name Translate
 * @description The translate() function allows objects to be
 * moved to any location within the window. The first parameter
 * sets the x-axis offset and the second parameter sets the
 * y-axis offset. This example shows how transforms accumulate.
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
 */

let x = 0;
let y = 0;
let dim = 80.0;

function setup() {
  createCanvas(720, 400);
  noStroke();
}

function draw() {
  background(102);
<<<<<<< HEAD
  // x값을 증가시켜 움직이게 만들기
  x = x + 0.8;
  // 도형이 캔버스 밖으로 나가면, 위치를 리셋한다.
=======
  // Animate by increasing our x value
  x = x + 0.8;
  // If the shape goes off the canvas, reset the position
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  if (x > width + dim) {
    x = -dim;
  }

<<<<<<< HEAD
  // rect 명령어는 원점을 중심점으로 삼는 도형을 그리지만,
  // translate은 이를 새로운 x와 y 위치로 옮깁니다.
=======
  // Even though our rect command draws the shape with its
  // center at the origin, translate moves it to the new
  // x and y position
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  translate(x, height / 2 - dim / 2);
  fill(255);
  rect(-dim / 2, -dim / 2, dim, dim);

<<<<<<< HEAD
  // translate(치환)은 축적됩니다. 이 rect가 다른 rect와
  // 동일한 x축값 매개 변수를 가졌음에도
  // 두 배로 빠르게 움직이는 걸 볼 수 있습니다.
=======
  // Transforms accumulate. Notice how this rect moves
  // twice as fast as the other, but it has the same
  // parameter for the x-axis value
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  translate(x, dim);
  fill(0);
  rect(-dim / 2, -dim / 2, dim, dim);
}
