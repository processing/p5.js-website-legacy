/**
<<<<<<< HEAD
 * @name 오디오 녹음/저장
 * @description 
 * 사운드를 녹음하고 재생한 뒤, 클라이언트 컴퓨터에 .wav 파일로 저장하세요
 * 이 예제에서는 총 세 개의 객체가 필요합니다: p5.AudioIn(마이크/사운드 소스),
 * p5.SoundRecorder(사운드 녹음), 그리고 p5.SoundFile(재생/저장)
 * <p><em><span class="small"> 로컬 프로젝트에서 이 예제를 실행하려면 적어도 한 개의 사운드 파일이 필요하고,
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound 라이브러리</a>를 추가해야 되며, 
 * <a href="https://github.com/processing/p5.js/wiki/Local-server">로컬 서버</a>를 작동시켜야 합니다.</span></em></p>
 */
let mic, recorder, soundFile;

let state = 0; // 마우스 버튼이 눌리면 녹음, 정지, 재생 순으로 상태가 변합니다.
=======
 * @name Record Save Audio
 * @description Record a sound, play it back and save
 * it as a .wav file to the client's computer.
 * We need three objects: a p5.AudioIn (mic / sound source),
 * p5.SoundRecorder (records the sound), and a
 * p5.SoundFile (play back / save).
 * <p><em><span class="small"> To run this example locally, you will need the
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound library</a>
 * a sound file, and a running <a href="https://github.com/processing/p5.js/wiki/Local-server">local server</a>.</span></em></p>
 */
let mic, recorder, soundFile;

let state = 0; // mousePress will increment from Record, to Stop, to Play
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753

function setup() {
  createCanvas(400, 400);
  background(200);
  fill(0);
  text('Enable mic and click the mouse to begin recording', 20, 20);

<<<<<<< HEAD
  // AudioIn 생성하기
  mic = new p5.AudioIn();

  // 녹음 기능을 제대로 작동시키려면, 사용자가 브라우저 마이크를 수동으로 활성화해야 됩니다!
  mic.start();

  // 사운드 녹음기 생성하기
  recorder = new p5.SoundRecorder();

  // 마이크를 녹음기에 연결
  recorder.setInput(mic);

  // 녹음된 사운드를 재생할 빈 사운드 파일 생성
=======
  // create an audio in
  mic = new p5.AudioIn();

  // users must manually enable their browser microphone for recording to work properly!
  mic.start();

  // create a sound recorder
  recorder = new p5.SoundRecorder();

  // connect the mic to the recorder
  recorder.setInput(mic);

  // create an empty sound file that we will use to playback the recording
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  soundFile = new p5.SoundFile();
}

function mousePressed() {
<<<<<<< HEAD
  // '.enabled' 불리언을 사용하여 사용자의 마이크 활성화 여부 확인(그렇지 않을 경우, 침묵 상태를 녹음하게 됩니다!)
  if (state === 0 && mic.enabled) {
    // p5.SoundFile에 녹음하라고 녹음기에 지시하기. 이 파일은 녹음 사운드를 재생하는 데에 쓰입니다.
=======
  // use the '.enabled' boolean to make sure user enabled the mic (otherwise we'd record silence)
  if (state === 0 && mic.enabled) {
    // Tell recorder to record to a p5.SoundFile which we will use for playback
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
    recorder.record(soundFile);

    background(255, 0, 0);
    text('Recording now! Click to stop.', 20, 20);
    state++;
  } else if (state === 1) {
<<<<<<< HEAD
    recorder.stop(); // 녹음기를 멈추고, 결과물을 soundFile에 보내기
=======
    recorder.stop(); // stop recorder, and send the result to soundFile
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753

    background(0, 255, 0);
    text('Recording stopped. Click to play & save', 20, 20);
    state++;
  } else if (state === 2) {
<<<<<<< HEAD
    soundFile.play(); // 결과물 재생하기!
    saveSound(soundFile, 'mySound.wav'); // 파일 저장하기
=======
    soundFile.play(); // play the result!
    saveSound(soundFile, 'mySound.wav'); // save file
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
    state++;
  }
}
