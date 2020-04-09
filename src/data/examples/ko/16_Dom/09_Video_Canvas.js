/*
<<<<<<< HEAD
 * @name 비디오 캔버스
 * @description <p>비디오를 다양한 형식으로 불러와 캔버스 위에 그릴 수 있도록 합니다.</p>
 * <p><em><span class="small"> 로컬 프로젝트에서 이 예제를 실행하려면 적어도 한 개의 비디오 파일이 필요하고,
 * <a href="http://p5js.org/reference/#/libraries/p5.dom">p5.dom 라이브러리</a>를 추가해야 되며, 
 * <a href="https://github.com/processing/p5.js/wiki/Local-server">로컬 서버</a>를 작동시켜야 합니다.</span></em></p>
=======
 * @name Video Canvas
 * @description <p>Load a video with multiple formats and draw it to the canvas.</p>
 * <p><em><span class="small"> To run this example locally, you will need the
 * <a href="http://p5js.org/reference/#/libraries/p5.dom">p5.dom library</a>
 * at least one video file, and a running <a href="https://github.com/processing/p5.js/wiki/Local-server">local server</a>.</span></em></p>
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
 */
let fingers;

function setup() {
  createCanvas(710, 400);
<<<<<<< HEAD
  // 여러 브라우저 지원을 위해 다양한 비디오 형식 지정
  fingers = createVideo(['assets/fingers.mov', 'assets/fingers.webm']);
  fingers.hide(); // 기본값으로, 비디오는 별개의 DOM 요소로 나타납니다.
  // 이를 우선 숨긴 뒤, 캔버스에 그릴 수 있도록 해볼까요
=======
  // specify multiple formats for different browsers
  fingers = createVideo(['assets/fingers.mov', 'assets/fingers.webm']);
  fingers.hide(); // by default video shows up in separate dom
  // element. hide it and draw it to the canvas
  // instead
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
}

function draw() {
  background(150);
<<<<<<< HEAD
  image(fingers, 10, 10); // 캔버스에 비디오 프레임 그리기
  filter('GRAY');
  image(fingers, 150, 150); // 캔버스에 두번째 사본 그리기
}

function mousePressed() {
  fingers.loop(); // 반복 재생 설정 및 비디오 재생
=======
  image(fingers, 10, 10); // draw the video frame to canvas
  filter('GRAY');
  image(fingers, 150, 150); // draw a second copy to canvas
}

function mousePressed() {
  fingers.loop(); // set the video to loop and start playing
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
}
