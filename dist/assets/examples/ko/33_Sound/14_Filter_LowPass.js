/*
 *  @name 로우패스 필터
 *  @description p5.SoundFile에 p5.LowPass 필터를 적용합니다.
 *  FFT를 사용해 사운드를 시각화해보세요.
 *  mouseX를 필터의 차단 주파수에, mouseY를 밴드패스 필터의 울림/폭에 맵핑합니다.
 * <p><em><span class="small"> 로컬 프로젝트에서 이 예제를 실행하려면
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound 라이브러리</a>를 추가해야 되며, 
 * <a href="https://github.com/processing/p5.js/wiki/Local-server">로컬 서버</a>를 작동시켜야 합니다.</span></em></p>
 */
let soundFile;
let fft;

let filter, filterFreq, filterRes;

function preload() {
  soundFormats('mp3', 'ogg');
  soundFile = loadSound('assets/beat');
}

function setup() {
  createCanvas(710, 256);
  fill(255, 40, 255);

  // 사운드 파일 불러오기
  soundFile.loop();

  filter = new p5.LowPass();

  // 마스터 출력으로부터 사운드 파일 연결 해제
  // Then, connect it to the filter, so that we only hear the filtered sound
  soundFile.disconnect();
  soundFile.connect(filter);

  fft = new p5.FFT();
}

function draw() {
  background(30);

  // mouseX를 FFT 스펙트럼 가청 범위(10Hz-22050Hz)에 해당하는 밴드패스 주파수에 맵핑하기
  filterFreq = map(mouseX, 0, width, 10, 22050);

  // mouseY를 울림/폭에 맵핑하기
  filterRes = map(mouseY, 0, height, 15, 5);

  // 필터 매개 변수들 설정
  filter.set(filterFreq, filterRes);

  // FFT 스펙트럼 분석 중 x와 h가 아래와 같은 모든 값들 그리기:
  // x = 최저(10Hz)~최고(22050Hz) 주파수,
  // h = 해당 주파수에서의 에너지 / 진폭
  let spectrum = fft.analyze();
  noStroke();
  for (let i = 0; i < spectrum.length; i++) {
    let x = map(i, 0, spectrum.length, 0, width);
    let h = -height + map(spectrum[i], 0, 255, height, 0);
    rect(x, height, width / spectrum.length, h);
  }
}
