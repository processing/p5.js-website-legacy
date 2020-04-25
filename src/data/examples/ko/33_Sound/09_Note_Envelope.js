/**
 *  @name 음계 엔벨로프
 *  @description  <p>엔벨로프(envelope)는 시간/값의 쌍으로 정의되는
 *  일련의 페이드를 말합니다.
 *  이 예제에서 엔벨로프는 오실레이터의 출력 진폭을 제어하여 
 *  음계를 "재생"하는 데 사용됩니다.<br/><br/>
 *  p5.Oscillator은 내부 웹 오디오 GainNode(p5.Oscillator.output)
 *  를 거쳐 그 출력 내용을 전송합니다.
 *  이 노드는 기본값으로 상수 0.5를 갖는데, osc.amp()메소드로 재설정할 수 있습니다.
 *  또는 이 예제에서처럼, 엔벨로프가 직접 노드를 제어하여
 *  마치 볼륨을 조정하듯 진폭을 조정할 수 있습니다.</p>
 * <p><em><span class="small"> 로컬 프로젝트에서 이 예제를 실행하려면 적어도 한 개의 사운드 파일이 필요하고,
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound 라이브러리</a>를 추가해야 됩니다.</span></em></p>
 */
let osc, envelope, fft;

let scaleArray = [60, 62, 64, 65, 67, 69, 71, 72];
let note = 0;

function setup() {
  createCanvas(710, 200);
  osc = new p5.SinOsc();

  // 엔벨로프 인스턴스화
  envelope = new p5.Env();

  // 어택 시간, 감쇠 시간, 지속 속도, 릴리즈 시간 설정
  envelope.setADSR(0.001, 0.5, 0.1, 0.5);

  // 어택 레벨, 릴리즈 레벨 설정
  envelope.setRange(1, 0);

  osc.start();

  fft = new p5.FFT();
  noStroke();
}

function draw() {
  background(20);

  if (frameCount % 60 === 0 || frameCount === 1) {
    let midiValue = scaleArray[note];
    let freqValue = midiToFreq(midiValue);
    osc.freq(freqValue);

    envelope.play(osc, 0, 0.1);
    note = (note + 1) % scaleArray.length;
  }

  // 캔버스에 FFT.analyze() 주파수 분석 내용 기입
  let spectrum = fft.analyze();
  for (let i = 0; i < spectrum.length / 20; i++) {
    fill(spectrum[i], spectrum[i] / 10, 0);
    let x = map(i, 0, spectrum.length / 20, 0, width);
    let h = map(spectrum[i], 0, 255, 0, height);
    rect(x, height, spectrum.length / 20, -h);
  }
}
