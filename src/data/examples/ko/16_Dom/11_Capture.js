/*
 * @name 실시간 비디오
 * @frame 710,240
 * <p><em><span class="small"> 로컬 프로젝트에서 이 예제를 실행하려면 적어도 한 개의 비디오 파일이 필요하고,
 * <a href="http://p5js.org/reference/#/libraries/p5.dom">p5.dom 라이브러리</a>를 추가해야 되며, 
 * <a href="https://github.com/processing/p5.js/wiki/Local-server">로컬 서버</a>를 작동시켜야 합니다.</span></em></p><br><br>
 * 웹캠을 통해 보여지는 실시간 비디오 화면을 캔버스 위에 그릴 수 있습니다.
 * 반전 효과 필터도 적용할 수 있습니다.
 * 실시간 비디오 화면은 기본값으로 캔버스 위에 나타납니다.
 * 아래의 코드 중 capture.hide()의 주석 처리(//)를 해제하면 이 실시간 비디오 화면을 숨길 수 있습니다. 
 */
let capture;

function setup() {
  createCanvas(390, 240);
  capture = createCapture(VIDEO);
  capture.size(320, 240);
  //capture.hide();
}

function draw() {
  background(255);
  image(capture, 0, 0, 320, 240);
  filter('INVERT');
}
