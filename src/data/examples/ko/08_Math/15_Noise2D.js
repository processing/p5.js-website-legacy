/*
 * @name 2D 노이즈
 * @frame 710,400 (선택 사항)
 * @description 여러 인수를 사용하여 2D 노이즈를 만들어보세요.
 *
 */

let noiseVal;
let noiseScale = 0.02;

function setup() {
  createCanvas(640, 360);
}

function draw() {
  background(0);
  // 이미지의 좌측 절반 그리기
  for (let y = 0; y < height - 30; y++) {
    for (let x = 0; x < width / 2; x++) {
      // noiceDetail, 픽셀 옥타브와 번짐 정도
      noiseDetail(2, 0.2);
      noiseVal = noise((mouseX + x) * noiseScale, (mouseY + y) * noiseScale);
      stroke(noiseVal * 255);
      point(x, y);
    }
  }
  // 이미지의 우측 절반 그리기
  for (let y = 0; y < height - 30; y++) {
    for (let x = width / 2; x < width; x++) {
      // noiceDetail, 픽셀 옥타브와 번짐 정도
      noiseDetail(5, 0.5);
      noiseVal = noise((mouseX + x) * noiseScale, (mouseY + y) * noiseScale);
      stroke(noiseVal * 255);
      point(x, y);
    }
  }
  //두 화면의 디테일 구성하기
  textSize(18);
  fill(255, 255, 255);
  text('2옥타브와 0.2 번짐 정도의 2D 노이즈', 10, 350);
  text('1옥타브와 0.7 번짐 정도의 2D 노이즈', 330, 350);
}
