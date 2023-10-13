/**
 * @name 주파수 변조(FM)
 * @description <p> 주파수 변조(Frequancy Modulator, FM)는 강력한 합성 방식입니다.
 * 아주 간단히 말하자면, FM은 반송파와 변조기라는 두 개의 오실레이터를 포함합니다.
 * 변조기의 파형이 최소 및 최대 진폭 값 사이에서 진동하면, 그 순간의 값이 반송파 주파수에 추가(즉, "변조")됩니다</p>
 * <p><b>반송파</b>는, 우리가 일반적으로 음고(pitch)라 부르는, 가청 주파수에서 진동합니다.
 * 이 예제의 경우, "A3"음과 동일한 220Hz의 사인파 오실레이터입니다.
 * 모든 p5.Oscillator들은 그 기본값으로 반송파가 마스터 출력에 연결되어 있습니다.
 * <p>이 예제에서 우리는 <b>변조기</b>를 마스터 출력과 <code>연결 해제</code>하고,
 * 대신 다음을 사용하여 반송파 주파수에 연결합니다: <code>carrier.freq(modulator)</code>.
 * 이는 변조기의 출력 진폭을 반송파 주파수에 추가합니다.</p>
 * <p>
 * <b>변조 깊이</b>는 반송파 주파수가 변조된 정도를 묘사합니다.
 * 이는 변조기의 진폭을 기반으로 합니다.
 * 변조기는 반송파 주파수에 추가될, 진폭 값들의 연속적인 스트림을 생성합니다. 
 * 진폭이 0이면 묵음이 발생하므로 변조가 적용되지 않습니다. 
 * 진폭이 1.0이면 출력값의 범위가 +1.0과 -1.0 사이로 조정됩니다.
 * 이는 스피커로 전송되는 사운드의 표준 범위이기도 합니다.
 * 하지만, FM에서는 변조기의 출력을 반송파 주파수로 전송하는데,
 * 반송파 주파수에서는 + 1Hz / -1Hz 변조를 거의 찾아보기 힘듭니다. 
 * 따라서, 변조기의 진폭("깊이")을 스피커로 보내는 값보다 훨씬 높은 숫자로 증가시키는 게 일반적입니다.</p>
 * <p><b>변조 주파수</b>는 변조 속도를 나타냅니다.
 * 변조 주파수가 20Hz보다 낮으면, 우리는 주파수를 음고가 아닌 비트와 리듬으로서 듣게 됩니다.
 * 예를 들어, 오페라 보컬의 "비브라토" 효과를 따라하고자, 깊이 20에서 7.5Hz를 시도해보세요.
 * 이를 위한 용어는 저주파수 오실레이터(Low Frequency Oscillator, LFO)입니다.
 * 더 높은 주파수로 설정된 변조기는 여러가지 흥미로운 효과들을 만들 수 있습니다.
 * 특히, 주파수가 반송파 신호와 화음을 이룰 경우 그렇습니다.
 * 그 예로, 변조기의 주파수가 반송파 주파수의 절반 또는 두 배일 때 발생하는 사운드를 들어세요.
 * 이는 존 차우닝(John Chowning)이 1960년대에 개발한 "FM 합성" 개념의 근간이기도 합니다.
 * FM 합성은 1980년대에 이르러 사운드 합성을 변혁시킨 바 있으며, 놋쇠나 종소리를 합성하는 데에 자주 사용됩니다. *
 *
 * <p>이 예제에서는,</p><p>
 * - MouseX가 변조 깊이(즉, 변조기의 진폭)를 -150부터 150까지 조정합니다.
 * 변조기 진폭이 0(즉, 가운데)으로 설정되면, 아무런 변조 효과가 발생하지 않습니다.
 * 숫자의 절대값이 커질수록, 효과가 커집니다.
 * 변조기 파형이 마치 사각형 <code>[]</code>, 싸인 <code>~</code>
 * 또는 삼각형 <code>/\</code>과 같이 대칭일 경우, 음수의 진폭과 양수의 진폭은 동일합니다.
 * 하지만 이 예제 속 변조기는 마치 이러한 모양 / 의 톱니처럼 생긴 비대칭적인 파형을 갖습니다.
 * 여기에 음수를 곱하면, 파형이 마치 이러한 모양 \ 처럼 반대로 바뀝니다. 
 * 그 차이를 명확히 관찰하려면, 주파수를 낮춰보세요.
 * </p>
 * <p>- MouseY는 변조기의 주파수를 0부터 112Hz까지 조정합니다.
 * 가청 범위(약 20hz에서 시작) 이하 및 이상 영역에서의 변조기 주파수를 비교해보세요.
 * 특히, 반송파 주파수(220hz이므로 1/2, 1/3, 1/4 등으로 나눠보세요)와 화음을 이루는 상태에서요! *
 *
 * <p><em><span class="small">로컬 프로젝트에서 이 예제를 실행하려면,
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound 라이브러리</a>
 * 를 추가해야 됩니다.</em></span></p>
 */

let carrier; // 이것이 바로 우리가 듣게될 오실레이터입니다.
let modulator; // 이 오실레이터가 반송파 주파수를 변조할 것입니다.

let analyzer; // 이것을 사용해 파형을 시각화합니다.

// 반송파 주파수 사전 변조
let carrierBaseFreq = 220;

// 변조기의 최저/최고 범위
let modMaxFreq = 112;
let modMinFreq = 0;
let modMaxDepth = 150;
let modMinDepth = -150;

function setup() {
  let cnv = createCanvas(800, 400);
  noFill();

  carrier = new p5.Oscillator('sine');
  carrier.amp(0); // 진폭 설정
  carrier.freq(carrierBaseFreq); // 주파수 설정
  carrier.start(); // 오실레이팅 시작

  // 종류를 'square(사각형)', 'sine(싸인)' 또는 'triangle(삼각형)'으로 바꿔보세요!
  modulator = new p5.Oscillator('sawtooth');
  modulator.start();

  // 반송파 주파수를 변조하기 위해 변조기의 출력값 더하기
  modulator.disconnect();
  carrier.freq(modulator);

  // 오디오 분석을 위해 FFT 생성하기
  analyzer = new p5.FFT();

  // 마우스 오버 / 스타트 터치 시, 반송파 페이드 인/아웃
  toggleAudio(cnv);
}

function draw() {
  background(30);

  // 최대 및 최소 주파수 사이의 변조기 주파수에 mouseY를 매핑하기
  let modFreq = map(mouseY, height, 0, modMinFreq, modMaxFreq);
  modulator.freq(modFreq);

  // 변조기의 진폭 바꾸기
  // 음수의 amp는 톱니 파형을 반대로 뒤집고, 두드리는 듯한 사운드를 만듭니다.
  //
  let modDepth = map(mouseX, 0, width, modMinDepth, modMaxDepth);
  modulator.amp(modDepth);

  // 파형 분석하기
  waveform = analyzer.waveform();

  // 파형 그리기
  stroke(255);
  strokeWeight(10);
  beginShape();
  for (let i = 0; i < waveform.length; i++) {
    let x = map(i, 0, waveform.length, 0, width);
    let y = map(waveform[i], -1, 1, -height / 2, height / 2);
    vertex(x, y + height / 2);
  }
  endShape();

  strokeWeight(1);
  // 어떤 일이 일어나는 지에 대한 설명을 추가합니다.
  text('Modulator Frequency: ' + modFreq.toFixed(3) + ' Hz', 20, 20);
  text(
    'Modulator Amplitude (Modulation Depth): ' + modDepth.toFixed(3),
    20,
    40
  );
  text(
    'Carrier Frequency (pre-modulation): ' + carrierBaseFreq + ' Hz',
    width / 2,
    20
  );
}

// 사운드 토글을 위한 helper 함수
function toggleAudio(cnv) {
  cnv.mouseOver(function() {
    carrier.amp(1.0, 0.01);
  });
  cnv.touchStarted(function() {
    carrier.amp(1.0, 0.01);
  });
  cnv.mouseOut(function() {
    carrier.amp(0.0, 1.0);
  });
}
