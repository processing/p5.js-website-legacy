/**
 * @name 진폭 변조(AM)
 * @description <p>진폭 변조(Amplitude Modulation, AM)은
 * 반송파와 변조기라는 두 개의 오실레이터를 포함하고, 이는 반송파의 진폭을 조정합니다.</p>
 *
 * <p>반송파는 일반적으로 가청 주파수(예. 440Hz)에 설정됩니다.
 * 그리고, 그 기본값으로 마스터 출력에 연결되어 있습니다.a
 * carrier.amp는 0으로 설정되어 있는데, 이는 변조기로 진폭을 조정하기 위해서입니다.</p>
 *
 * <p>이 예제에서 변조기는 마스터 출력과 연결이 해제되어 있습니다.
 * 대신, 다음을 통해 반송파의 진폭에 연결되어 있습니다: carrier.amp(변조기).</p>
 *
 * <p>이 예제에서는,</p>
 * <p>- MouseX가 변조기의 진폭을 0부터 1까지 조정합니다.
 * 변조기 진폭이 0으로 설정되면, 아무런 변조 효과가 발생하지 않습니다.</p>
 *
 * <p>- MouseY는 변조기의 주파수를 0부터 20hz까지 조정합니다.
 * 이 범위는 인간이 들을 수 있는 주파수보다 낮으므로, 우리는 변조 사운드를 리듬으로서 듣게됩니다.
 * 이 범위를 사용해 마치 풍금 소리와같은 효과를 만들 수 있습니다.
 * 링 변조는 진폭 변조의 한 종류로, 원본 반송파 신호가 존재하지 않고, 더 빠른 주파수를 변조합니다.</p>
 *
 * <p><em><span class="small">로컬 프로젝트에서 이 예제를 실행하려면,
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound 라이브러리</a>
 * 를 추가해야 됩니다.</em></span></p>
 */
let carrier; // 이것이 바로 우리가 듣게될 오실레이터입니다.
let modulator; // 이 오실레이터가 반송파 주파수를 변조할 것입니다.
let fft; // 이것을 사용해 파형을 시각화합니다.

function setup() {
  createCanvas(800, 400);
  noFill();
  background(30); // 알파값

  carrier = new p5.Oscillator(); // 기본값으로, 마스터 출력에 연결된 상태입니다.
  carrier.freq(340);
  carrier.amp(0);
  // 반송파의 amp는 기본값으로 0을 가져, 변조기에게 완전한 제어 권한을 부여합니다.

  carrier.start();

  modulator = new p5.Oscillator('triangle');
  modulator.disconnect(); // 변조기를 마스터 출력과 연결 해제합니다.
  modulator.freq(5);
  modulator.amp(1);
  modulator.start();

  // 변조기를 사용해 반송파의 진폭을 변조하기
  // 추가적으로, 신호도 조정할 수 있습니다.
  carrier.amp(modulator.scale(-1, 1, 1, -1));

  // 오디오 분석을 위해 FFT 생성하기
  fft = new p5.FFT();
}

function draw() {
  background(30, 30, 30, 100); // 알파값

  // 0과 20hz 사이의 변조기 주파수에 mouseY를 매핑하기
  let modFreq = map(mouseY, 0, height, 20, 0);
  modulator.freq(modFreq);

  let modAmp = map(mouseX, 0, width, 0, 1);
  modulator.amp(modAmp, 0.01); // 페이드 타임을 0.1로 조정하여 페이딩을 부드럽게 만들기

  // 파형 분석하기
  waveform = fft.waveform();

  // 파형 그리기
  drawWaveform();

  drawText(modFreq, modAmp);
}

function drawWaveform() {
  stroke(240);
  strokeWeight(4);
  beginShape();
  for (let i = 0; i < waveform.length; i++) {
    let x = map(i, 0, waveform.length, 0, width);
    let y = map(waveform[i], -1, 1, -height / 2, height / 2);
    vertex(x, y + height / 2);
  }
  endShape();
}

function drawText(modFreq, modAmp) {
  strokeWeight(1);
  text('Modulator Frequency: ' + modFreq.toFixed(3) + ' Hz', 20, 20);
  text('Modulator Amplitude: ' + modAmp.toFixed(3), 20, 40);
}
