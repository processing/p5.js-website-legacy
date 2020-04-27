/**
<<<<<<< HEAD
 *  @name 밴드패스 필터
 *  @description 화이트 노이즈에 p5.BandPass 필터를 적용합니다.
 *  FFT를 사용해 사운드를 시각화해보세요.
 *  mouseX를 필터의 밴드패스(대역) 주파수에, mouseY를 밴드패스 필터의 울림/폭에 맵핑합니다.
 * <p><em><span class="small"> 로컬 프로젝트에서 이 예제를 실행하려면
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound 라이브러리</a>를 추가해야 되며, 
 * <a href="https://github.com/processing/p5.js/wiki/Local-server">로컬 서버</a>를 작동시켜야 합니다.</span></em></p>
=======
 *  @name Filter BandPass
 *  @description Apply a p5.BandPass filter to white noise.
 *  Visualize the sound with FFT.
 *  Map mouseX to the bandpass frequency
 *  and mouseY to resonance/width of the a BandPass filter
 *
 * <p><em><span class="small"> To run this example locally, you will need the
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound library</a>
 * a sound file, and a running <a href="https://github.com/processing/p5.js/wiki/Local-server">local server</a>.</span></em></p>
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
 */
let noise;
let fft;
let filter, filterFreq, filterWidth;

function setup() {
  createCanvas(710, 256);
  fill(255, 40, 255);

  filter = new p5.BandPass();

  noise = new p5.Noise();

<<<<<<< HEAD
  noise.disconnect(); // 마스터 출력과 사운드 파일 연결 해제...
  filter.process(noise); // ...그리고 필터에 연결하여 밴드패스만 들리게하기
=======
  noise.disconnect(); // Disconnect soundfile from master output...
  filter.process(noise); // ...and connect to filter so we'll only hear BandPass.
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  noise.start();

  fft = new p5.FFT();
}

function draw() {
  background(30);

<<<<<<< HEAD
  // mouseX를 FFT 스펙트럼 범위(10Hz-22050Hz)에 해당하는 밴드패스 주파수에 맵핑하기
  filterFreq = map(mouseX, 0, width, 10, 22050);
  // mouseY를 울림/폭에 맵핑하기
  filterWidth = map(mouseY, 0, height, 0, 90);
  // 필터 매개 변수들 설정
  filter.set(filterFreq, filterWidth);

  // FFT 스펙트럼 분석 중 x와 h가 아래와 같은 모든 값들 그리기:
  // x = 최저(10Hz)~최고(22050Hz) 주파수,
  // h = 해당 주파수에서의 에너지 / 진폭
=======
  // Map mouseX to a bandpass freq from the FFT spectrum range: 10Hz - 22050Hz
  filterFreq = map(mouseX, 0, width, 10, 22050);
  // Map mouseY to resonance/width
  filterWidth = map(mouseY, 0, height, 0, 90);
  // set filter parameters
  filter.set(filterFreq, filterWidth);

  // Draw every value in the FFT spectrum analysis where
  // x = lowest (10Hz) to highest (22050Hz) frequencies,
  // h = energy / amplitude at that frequency
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  let spectrum = fft.analyze();
  noStroke();
  for (let i = 0; i < spectrum.length; i++) {
    let x = map(i, 0, spectrum.length, 0, width);
    let h = -height + map(spectrum[i], 0, 255, height, 0);
    rect(x, height, width / spectrum.length, h);
  }
}
