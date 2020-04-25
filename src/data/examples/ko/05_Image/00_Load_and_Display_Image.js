/*
 * @name 이미지 불러오기 및 보이기
 * @description 이미지를 실제 또는 다른 크기로 지정하여 화면상 불러오고 보이게 할 수 있습니다.
 * <p><em><span class="small"> 로컬 프로젝트에서 이 예제를 실행하려면, 이미지 파일을 준비하시고
 * <a href="https://github.com/processing/p5.js/wiki/Local-server">로컬 서버</a>를 작동시키세요.</span></em></p>
 */
let img; // 변수 'img' 선언

function setup() {
  createCanvas(720, 400);
  img = loadImage('assets/moonwalk.jpg'); // 이미지 불러오기
}

function draw() {
  // 이미지를 화면상 좌표 (0,0) 위치에 실제 크기로 보이게 한다.
  image(img, 0, 0);
  // 이미지를 화면상 좌표 (0,높이/2) 위치에 절반 크기로 보이게 한다.
  image(img, 0, height / 2, img.width / 2, img.height / 2);
}
