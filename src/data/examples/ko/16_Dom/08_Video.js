/*
<<<<<<< HEAD
 * @name 비디오
 * @frame 710,250
 * @description <p>다양한 형식의 비디오를 불러오고 버튼을 눌러 재생과 일시 정지를 전환합니다.
 * <p><em><span class="small"> 로컬 프로젝트에서 이 예제를 실행하려면 적어도 한 개의 비디오 파일이 필요하고,
 * <a href="http://p5js.org/reference/#/libraries/p5.dom">p5.dom 라이브러리</a>를 추가하면 됩니다.</span></em></p>
=======
 * @name Video
 * @frame 710,250
 * @description <p>Load a video with multiple formats and toggle between playing
 * and paused with a button press.
 * <p><em><span class="small"> To run this example locally, you will need at least
 * one video file, and the
 * <a href="http://p5js.org/reference/#/libraries/p5.dom">p5.dom library</a>.</span></em></p>
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
 */
let playing = false;
let fingers;
let button;

function setup() {
<<<<<<< HEAD
  // 여러 브라우저 지원을 위해 다양한 비디오 형식 지정
  fingers = createVideo(['assets/fingers.mov', 'assets/fingers.webm']);
  button = createButton('play');
  button.mousePressed(toggleVid); // 버튼 리스너 붙이기
}

// 현재 상태에 따라 비디오를 재생 또는 일시 정지
=======
  // specify multiple formats for different browsers
  fingers = createVideo(['assets/fingers.mov', 'assets/fingers.webm']);
  button = createButton('play');
  button.mousePressed(toggleVid); // attach button listener
}

// plays or pauses the video depending on current state
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
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
