/*
<<<<<<< HEAD
 * @name 2D 노이즈
 * @frame 710,400 (optional)
 * @description 여러 인수를 사용하여 2D 노이즈를 만들어보세요.
=======
 * @name Noise2D
 * @frame 710,400 (optional)
 * @description Create a 2D noise with different parameters.
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
 *
 */

let noiseVal;
let noiseScale = 0.02;

function setup() {
  createCanvas(640, 360);
}

function draw() {
  background(0);
<<<<<<< HEAD
  // 이미지의 좌측 절반 그리기
  for (let y = 0; y < height - 30; y++) {
    for (let x = 0; x < width / 2; x++) {
      // noiceDetail, 픽셀 옥타브와 번짐 정도
=======
  // Draw the left half of image
  for (let y = 0; y < height - 30; y++) {
    for (let x = 0; x < width / 2; x++) {
      // noiceDetail of the pixels octave count and falloff value
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
      noiseDetail(2, 0.2);
      noiseVal = noise((mouseX + x) * noiseScale, (mouseY + y) * noiseScale);
      stroke(noiseVal * 255);
      point(x, y);
    }
  }
<<<<<<< HEAD
  // 이미지의 우측 절반 그리기
  for (let y = 0; y < height - 30; y++) {
    for (let x = width / 2; x < width; x++) {
      // noiceDetail, 픽셀 옥타브와 번짐 정도
=======
  // Draw the right half of image
  for (let y = 0; y < height - 30; y++) {
    for (let x = width / 2; x < width; x++) {
      // noiceDetail of the pixels octave count and falloff value
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
      noiseDetail(5, 0.5);
      noiseVal = noise((mouseX + x) * noiseScale, (mouseY + y) * noiseScale);
      stroke(noiseVal * 255);
      point(x, y);
    }
  }
<<<<<<< HEAD
  //두 화면의 디테일 구성하기
  textSize(18);
  fill(255, 255, 255);
  text('2옥타브와 0.2 번짐 정도의 2D 노이즈', 10, 350);
  text('1옥타브와 0.7 번짐 정도의 2D 노이즈', 330, 350);
=======
  //Show the details of two partitions
  textSize(18);
  fill(255, 255, 255);
  text('Noice2D with 2 octaves and 0.2 falloff', 10, 350);
  text('Noice2D with 1 octaves and 0.7 falloff', 330, 350);
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
}
