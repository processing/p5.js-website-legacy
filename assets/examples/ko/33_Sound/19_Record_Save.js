/**
 * @name 오디오 녹음/저장
 * @description 
 * 사운드를 녹음하고 재생한 뒤, 클라이언트 컴퓨터에 .wav 파일로 저장하세요. 
 * 이 예제에서는 총 세 개의 객체가 필요합니다: p5.AudioIn(마이크/사운드 소스),
 * p5.SoundRecorder(사운드 녹음), 그리고 p5.SoundFile(재생/저장)
 * <p><em><span class="small"> 로컬 프로젝트에서 이 예제를 실행하려면 적어도 한 개의 사운드 파일이 필요하고,
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound 라이브러리</a>를 추가해야 되며, 
 * <a href="https://github.com/processing/p5.js/wiki/Local-server">로컬 서버</a>를 작동시켜야 합니다.</span></em></p>
 */
let mic, recorder, soundFile;

let state = 0; // 마우스 버튼이 눌리면 녹음, 정지, 재생 순으로 상태가 변합니다.

function setup() {
  createCanvas(400, 400);
  background(200);
  fill(0);
  text('Enable mic and click the mouse to begin recording', 20, 20);

  // AudioIn 생성하기
  mic = new p5.AudioIn();

  // 녹음 기능을 제대로 작동시키려면, 사용자가 브라우저 마이크를 수동으로 활성화해야 됩니다!
  mic.start();

  // 사운드 녹음기 생성하기
  recorder = new p5.SoundRecorder();

  // 마이크를 녹음기에 연결
  recorder.setInput(mic);

  // 녹음된 사운드를 재생할 빈 사운드 파일 생성
  soundFile = new p5.SoundFile();
}

function mousePressed() {
  // '.enabled' 불리언을 사용하여 사용자의 마이크 활성화 여부 확인(그렇지 않을 경우, 침묵 상태를 녹음하게 됩니다!)
  if (state === 0 && mic.enabled) {
    // p5.SoundFile에 녹음하라고 녹음기에 지시하기. 이 파일은 녹음 사운드를 재생하는 데에 쓰입니다.
    recorder.record(soundFile);

    background(255, 0, 0);
    text('Recording now! Click to stop.', 20, 20);
    state++;
  } else if (state === 1) {
    recorder.stop(); // 녹음기를 멈추고, 결과물을 soundFile에 보내기

    background(0, 255, 0);
    text('Recording stopped. Click to play & save', 20, 20);
    state++;
  } else if (state === 2) {
    soundFile.play(); // 결과물 재생하기!
    saveSound(soundFile, 'mySound.wav'); // 파일 저장하기
    state++;
  }
}
