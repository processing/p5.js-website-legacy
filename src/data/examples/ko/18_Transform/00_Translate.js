/*
 * @name 위치 이동(Translate)
 * @description translate() 함수는 객체를 화면 내 어떤 위치로든 이동하게 합니다.
 * 그 첫 번째 매개변수는 x축의 오프셋(offset)을,
 * 두 번째 매개변수는 y축의 오프셋을 지정합니다.
 * 이 예제는 이러한 이동들이 축적되는 것을 보여줍니다.
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
  // x값을 증가시켜 움직이게 만들기
  x = x + 0.8;
  // 도형이 캔버스 밖으로 나가면, 위치를 리셋한다.
  if (x > width + dim) {
    x = -dim;
  }

  // rect 명령어는 원점을 중심점으로 삼는 도형을 그리지만,
  // translate(이동)은 이를 새로운 x와 y 위치로 옮깁니다.
  translate(x, height / 2 - dim / 2);
  fill(255);
  rect(-dim / 2, -dim / 2, dim, dim);

  // translate(이동)은 축적됩니다. 이 rect가 다른 rect와
  // 동일한 x축값 매개변수를 가졌음에도
  // 두 배로 빠르게 움직이는 걸 볼 수 있습니다.
  translate(x, dim);
  fill(0);
  rect(-dim / 2, -dim / 2, dim, dim);
}
