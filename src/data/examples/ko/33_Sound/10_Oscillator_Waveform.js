/*
 * @name 오실레이터 주파수
 * @description <p>FFT를 사용하여 오실레이터를 제어하고 그 파형을 봅니다.
 * MouseX는 주파수에, mouseY는 진폭에 매핑됩니다.</p>
 * <p><em><span class="small"> 로컬 프로젝트에서 이 예제를 실행하려면 적어도 한 개의 사운드 파일이 필요하고,
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound 라이브러리</a>를 추가해야 됩니다.</span></em></p>
 */
let osc, fft;

function setup() {
  createCanvas(720, 256);

  osc = new p5.TriOsc(); // 주파수와 종류 설정
  osc.amp(0.5);

  fft = new p5.FFT();
  osc.start();
}

function draw() {
  background(255);

  let waveform = fft.waveform(); // 파형 분석하기
  beginShape();
  strokeWeight(5);
  for (let i = 0; i < waveform.length; i++) {
    let x = map(i, 0, waveform.length, 0, width);
    let y = map(waveform[i], -1, 1, height, 0);
    vertex(x, y);
  }
  endShape();

  // 오실레이터 주파수를 mouseX에 따라 변경
  let freq = map(mouseX, 0, width, 40, 880);
  osc.freq(freq);

  let amp = map(mouseY, 0, height, 1, 0.01);
  osc.amp(amp);
}
