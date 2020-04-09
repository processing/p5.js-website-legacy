/**
<<<<<<< HEAD
 * @name 마이크 입력
 * @description <p>컴퓨터의 마이크를 통해 오디오 입력을 받습니다.
 * 마이크에 소리를 내어 타원이 떠오르게 해보세요.</p>
 * <p>주의: p5.AudioIn에는 p5.Amplitude 객체가 포함되어, 별도의
 * p5.Amplitude를 생성하지 않고도 p5.AudioIn에서 getLevel을 호출할 수 있습니다.</p>
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound 라이브러리</a>를 추가해야 되며, 
 * <a href="https://github.com/processing/p5.js/wiki/Local-server">로컬 서버</a>를 작동시켜야 합니다.</span></em></p> */
=======
 * @name Mic Input
 * @description <p>Get audio input from your computer's microphone.
 * Make noise to float the ellipse.</p>
 * <p>Note: p5.AudioIn contains its own p5.Amplitude object,
 * so you can call getLevel on p5.AudioIn without
 * creating a p5.Amplitude.</p>
 * <p><em><span class="small"> To run this example locally, you will need the
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound library</a>
 * and a running <a href="https://github.com/processing/p5.js/wiki/Local-server">local server</a>.</span></em></p>
 */
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
let mic;

function setup() {
  createCanvas(710, 200);

<<<<<<< HEAD
  // 오디오 입력 생성하기
  mic = new p5.AudioIn();

  // 오디오 입력 시작하기
  // 그 기본값은 .connect()(즉, 컴퓨터 스피커에 연결)되지 "않은" 상태입니다.
=======
  // Create an Audio input
  mic = new p5.AudioIn();

  // start the Audio Input.
  // By default, it does not .connect() (to the computer speakers)
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  mic.start();
}

function draw() {
  background(200);

<<<<<<< HEAD
  // 전체 볼륨(0과 1.0 사이) 받아오기
=======
  // Get the overall volume (between 0 and 1.0)
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  let vol = mic.getLevel();
  fill(127);
  stroke(0);

<<<<<<< HEAD
  // 마이크 소리의 볼륨에 따라 떠있는 높이가 변하는 타원 그리기
=======
  // Draw an ellipse with height based on volume
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  let h = map(vol, 0, 1, height, 0);
  ellipse(width / 2, h - 25, 50, 50);
}
