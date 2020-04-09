/*
<<<<<<< HEAD
 * @name 투명도
 * @description 마우스 포인터를 좌우로 움직혀 이미지의 위치를 옮겨보세요.
 * 이 예제의 경우, tint()함수로 알파값이 수정된 이미지를 원본 이미지에 위에 겹쳐 보여줍니다.
 * <p><em><span class="small"> 로컬 프로젝트에서 이 예제를 실행하려면, 이미지 파일을 준비하시고
 * <a href="https://github.com/processing/p5.js/wiki/Local-server">로컬 서버</a>를 작동시키세요.</span></em></p>
=======
 * @name Transparency
 * @description Move the pointer left and right across the image to change its
 * position. This program overlays one image over another by modifying the
 * alpha value of the image with the tint() function.
 * <p><em><span class="small"> To run this example locally, you will need an
 * image file, and a running <a href="https://github.com/processing/p5.js/wiki/Local-server">
 * local server</a>.</span></em></p>
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
 */
let img;
let offset = 0;
let easing = 0.05;

function setup() {
  createCanvas(720, 400);
<<<<<<< HEAD
  img = loadImage('assets/moonwalk.jpg'); // 프로그램상 이미지 불러오기
}

function draw() {
  image(img, 0, 0); // 이미지를 투명도 100%로 보이게하기
  let dx = mouseX - img.width / 2 - offset;
  offset += dx * easing;
  tint(255, 127); // 이미지를 투명도 50%로 보이게하기
=======
  img = loadImage('assets/moonwalk.jpg'); // Load an image into the program
}

function draw() {
  image(img, 0, 0); // Display at full opacity
  let dx = mouseX - img.width / 2 - offset;
  offset += dx * easing;
  tint(255, 127); // Display at half opacity
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  image(img, offset, 0);
}
