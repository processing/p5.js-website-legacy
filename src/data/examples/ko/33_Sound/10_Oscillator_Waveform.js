/*
<<<<<<< HEAD
 * @name 오실레이터 주파수
 * @description <p>FFT를 사용하여 오실레이터를 제어하고 그 파형을 봅니다.
 * MouseX는 주파수에, mouseY는 진폭에 매핑됩니다.</p>
 * <p><em><span class="small"> 로컬 프로젝트에서 이 예제를 실행하려면 적어도 한 개의 사운드 파일이 필요하고,
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound 라이브러리</a>를 추가해야 됩니다.</span></em></p>
=======
 * @name Oscillator Frequency
 * @description <p>Control an Oscillator and view the waveform using FFT.
 * MouseX is mapped to frequency, mouseY is mapped to amplitude.</p>
 * <p><em><span class="small"> To run this example locally, you will need the
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound library</a> and a
 * sound file.</span></em></p>
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
 */
let osc, fft;

function setup() {
  createCanvas(720, 256);

<<<<<<< HEAD
  osc = new p5.TriOsc(); // 주파수와 종류 설정
=======
  osc = new p5.TriOsc(); // set frequency and type
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  osc.amp(0.5);

  fft = new p5.FFT();
  osc.start();
}

function draw() {
  background(255);

<<<<<<< HEAD
  let waveform = fft.waveform(); // 파형 분석하기
=======
  let waveform = fft.waveform(); // analyze the waveform
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  beginShape();
  strokeWeight(5);
  for (let i = 0; i < waveform.length; i++) {
    let x = map(i, 0, waveform.length, 0, width);
    let y = map(waveform[i], -1, 1, height, 0);
    vertex(x, y);
  }
  endShape();

<<<<<<< HEAD
  // 오실레이터 주파수를 mouseX에 따라 변경
=======
  // change oscillator frequency based on mouseX
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  let freq = map(mouseX, 0, width, 40, 880);
  osc.freq(freq);

  let amp = map(mouseY, 0, height, 1, 0.01);
  osc.amp(amp);
}
