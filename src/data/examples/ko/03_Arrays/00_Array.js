/*
 * @name 배열
 * @description 배열은 데이터의 리스트를 말합니다. 배열 속 각 데이터는 
 * 배열에서의 위치를 나타내는 색인(index) 번호로 식별됩니다. 배열의 시작은 0을 기준으로 합니다.
 * 따라서, 배열의 첫 번째 데이터는 [0]이고 두 번째 데이터는 [1]로 식별됩니다.
 * 이 예제에서는 "coswave"라는 배열을 만들고, 이를 코사인 값으로 채웁니다.
 * 데이터는 실행 화면상 세 가지의 다른 방법으로 표현됩니다.
 */
let coswave = [];

function setup() {
  createCanvas(720, 360);
  for (let i = 0; i < width; i++) {
    let amount = map(i, 0, width, 0, PI);
    coswave[i] = abs(cos(amount));
  }
  background(255);
  noLoop();
}

function draw() {
  let y1 = 0;
  let y2 = height / 3;
  for (let i = 0; i < width; i += 3) {
    stroke(coswave[i] * 255);
    line(i, y1, i, y2);
  }

  y1 = y2;
  y2 = y1 + y1;
  for (let i = 0; i < width; i += 3) {
    stroke((coswave[i] * 255) / 4);
    line(i, y1, i, y2);
  }

  y1 = y2;
  y2 = height;
  for (let i = 0; i < width; i += 3) {
    stroke(255 - coswave[i] * 255);
    line(i, y1, i, y2);
  }
}
