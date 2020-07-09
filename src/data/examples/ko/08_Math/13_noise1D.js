/*
 * @name 1D 노이즈
 * @description 1차원 펄린 노이즈를 사용해 위치를 지정합니다.
 */
let xoff = 0.0;
let xincrement = 0.01;

function setup() {
  createCanvas(710, 400);
  background(0);
  noStroke();
}

function draw() {
  // 알파값이 섞인 배경 생성
  fill(0, 10);
  rect(0, 0, width, height);

  //let n = random(0,width);  // 노이즈 대신 이 코드를 사용할 수 있습니다.

  // xoff로 노이즈값을 지정하고
  // 화면의 너비에 따라 크기 조정
  let n = noise(xoff) * width;

  // 매 사이클마다 xoff만큼 증가
  xoff += xincrement;

  // 펄린 노이즈가 생성한 값으로 타원 그리기
  fill(200);
  ellipse(n, height / 2, 64, 64);
}
