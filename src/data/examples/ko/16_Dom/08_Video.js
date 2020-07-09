/*
 * @name 비디오
 * @frame 710,250
 * @description <p>다양한 형식의 비디오를 불러오고 버튼을 눌러 재생 또는 일시 정지를 합니다.
 * <p><em><span class="small"> 로컬 프로젝트에서 이 예제를 실행하려면 적어도 한 개의 비디오 파일이 필요하고,
 * <a href="http://p5js.org/reference/#/libraries/p5.dom">p5.dom 라이브러리</a>를 추가하면 됩니다.</span></em></p>
 */
let playing = false;
let fingers;
let button;

function setup() {
  // 여러 브라우저 지원을 위해 다양한 비디오 형식 지정
  fingers = createVideo(['assets/fingers.mov', 'assets/fingers.webm']);
  button = createButton('play');
  button.mousePressed(toggleVid); // 버튼 리스너 붙이기
}

// 현재 상태에 따라 비디오를 재생 또는 일시 정지
function toggleVid() {
  if (playing) {
    fingers.pause();
    button.html('play');
  } else {
    fingers.loop();
    button.html('pause');
  }
  playing = !playing;
}
