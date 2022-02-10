/*
 * @name 배경 이미지
 * @description 이 예제는 배경 이미지를 불러오는 가장 빠른 방법을 소개합니다.
 * 이미지 파일을 배경으로 쓰기 위해선, 이미지의 너비와 높이를 
 * 프로그램 화면 크기와 동일하게 맞추면 됩니다.
 * <p><em><span class="small"> 로컬 프로젝트에서 이 예제를 실행하려면, 이미지 파일을 준비하시고
 * <a href="https://github.com/processing/p5.js/wiki/Local-server">로컬 서버</a>를 작동시키세요.</span></em></p>
 */
let bg;
let y = 0;

function setup() {
  // 이미지 파일을 배경으로 쓰기 위해, createCanvas() 메소드의 인수에
  // 이미지 크기와 동일한 사이즈를 기입하면 됩니다.
  // 이 예제의 경우, 이미지 크기는 720x400 픽셀입니다.
  bg = loadImage('assets/moonwalk.jpg');
  createCanvas(720, 400);
}

function draw() {
  background(bg);

  stroke(226, 204, 0);
  line(0, y, width, y);

  y++;
  if (y > height) {
    y = 0;
  }
}
