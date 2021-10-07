/*
 * @name 텍스트 회전
 * @description 스크린에 글자를 그린 후, 다양한 각도로 회전시킵니다.
 * (https://processing.org/examples/textrotation.html에서 옮김)
 */

let font,
fontsize = 32;

let angleRotate = 0.0;

function setup() {
  createCanvas(710, 400);
  background(0);

  // setup()함수와 draw()함수를 부르기 전에 .ttf 또는 .otf 파일이 'assets' 주소에
  // 있을 것을 확안합니다
  font = loadFont('assets/SourceSansPro-Regular.otf');

  // 텍스트의 특징을 정합니다
  textFont(font);
}

function draw() {
  background(0);

  strokeWeight(1);
  stroke(153);

  push();
  let angle1 = radians(45);
  translate(100, 180);
  rotate(angle1);
  // 스크린에 글짜를 그립니다
  text("45 DEGREES", 0, 0);
  line(0, 0, 150, 0);
  pop();

  push();
  let angle2 = radians(270);
  translate(200, 180);
  rotate(angle2);
  // 스크린에 글짜를 그립니다
  text("270 DEGREES", 0, 0);
  line(0, 0, 150, 0);
  pop();

  push();
  translate(440, 180);
  rotate(radians(angleRotate));
  text(int(angleRotate) % 360 + " DEGREES ", 0, 0);
  line(0, 0, 150, 0);
  pop();

  angleRotate += 0.25;

  stroke(255, 0, 0);
  strokeWeight(4);
  point(100, 180);
  point(200, 180);
  point(440, 180);
}
