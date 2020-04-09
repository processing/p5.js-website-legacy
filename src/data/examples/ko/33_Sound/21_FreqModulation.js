/**
<<<<<<< HEAD
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
=======
 * @name Frequency Modulation
 * @description <p>Frequency Modulation is a powerful form of synthesis.
 * In its simplest form, FM involves two oscillators, referred
 * to as the carrier and the modulator. As the modulator's waveform oscillates
 * between some minimum and maximum amplitude value, that momentary value
 * is added to ("modulates") the frequency of the carrier.</p>
 * <p>The <b>carrier</b> is typically set to oscillate at an audible frequency
 * that we perceive as a pitch—in this case, it is a sine wave oscilaltor at 220Hz,
 * equivalent to an "A3" note. The carrier is connected to master output by default
 * (this is the case for all p5.Oscillators).</p>
 * <p>We will <code>disconnect</code> the <b>modulator</b> from master output,
 * and instead connect to the frequency of the carrier:
 * <code>carrier.freq(modulator)</code>. This adds the output amplitude of the
 * modulator to the frequency of the carrier.</p>
 * <p>
 * <b>Modulation Depth</b> describes how much the carrier frequency will modulate.
 * It is based on the amplitude of the modulator.
 * The modulator produces a continuous stream of amplitude values that we will add
 * to the carrier frequency. An amplitude of zero means silence, so the modulation will
 * have no effect. An amplitude of 1.0 scales the range of output values
 * between +1.0 and -1.0. That is the standard range for sound that gets sent to
 * your speakers, but in FM we are instead sending the modulator's output to the carrier frequency,
 * where we'd barely notice the +1Hz / -1Hz modulation.
 * So we will typically increase the amplitude ("depth") of the modulator to numbers much higher than what
 * we might send to our speakers.</p>
 * <p><b>Modulation Frequency</b> is the speed of modulation. When the modulation frequency is lower
 * than 20Hz, we stop hearing its frequency as pitch, and start to hear it as a beating rhythm.
 * For example, try 7.5Hz at a depth of 20 to mimic the "vibrato" effect of an operatic vocalist.
 * The term for this is Low Frequency Oscillator, or LFO. Modulators set to higher frequencies can
 * also produce interesting effects, especially when the frequency has a harmonic relationship
 * to the carrier signal. For example, listen to what happens when the modulator's frequency is
 * half or twice that of the carrier. This is the basis for FM Synthesis, developed by John Chowning
 * in the 1960s, which came to revolutionize synthesis in the 1980s and is often used to synthesize
 * brass and bell-like sounds.
 *
 * <p>In this example,</p><p>
 * - MouseX controls the modulation depth (the amplitude of the modulator) from -150 to 150.
 * When the modulator's amplitude is set to 0 (in the middle), notice how the modulation
 * has no effect. The greater (the absolute value of) the number, the greater the effect.
 * If the modulator waveform is symetrical like a square <code>[]</code>, sine <code>~</code>
 * or triangle <code>/\</code>, the negative amplitude will be the same as positive amplitude.
 * But in this example, the modulator is an asymetrical sawtooth wave, shaped like this /.
 * When we multiply it by a negative number, it goes backwards like this \. To best
 * observe the difference, try lowering the frequency.
 * </p>
 * <p>- MouseY controls the frequency of the modulator from 0 to 112 Hz.
 * Try comparing modulation frequencies below the audible range (which starts around 20hz),
 * and above it, especially in a harmonic relationship to the carrier frequency (which is 220hz, so
 * try half that, 1/3, 1/4 etc...).
 *
 * <p><em><span class="small">You will need to include the
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound library</a>
 * for this example to work in your own project.</em></span></p>
 */

let carrier; // this is the oscillator we will hear
let modulator; // this oscillator will modulate the frequency of the carrier

let analyzer; // we'll use this visualize the waveform

// the carrier frequency pre-modulation
let carrierBaseFreq = 220;

// min/max ranges for modulator
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
let modMaxFreq = 112;
let modMinFreq = 0;
let modMaxDepth = 150;
let modMinDepth = -150;

function setup() {
  let cnv = createCanvas(800, 400);
  noFill();

  carrier = new p5.Oscillator('sine');
<<<<<<< HEAD
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
=======
  carrier.amp(0); // set amplitude
  carrier.freq(carrierBaseFreq); // set frequency
  carrier.start(); // start oscillating

  // try changing the type to 'square', 'sine' or 'triangle'
  modulator = new p5.Oscillator('sawtooth');
  modulator.start();

  // add the modulator's output to modulate the carrier's frequency
  modulator.disconnect();
  carrier.freq(modulator);

  // create an FFT to analyze the audio
  analyzer = new p5.FFT();

  // fade carrier in/out on mouseover / touch start
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  toggleAudio(cnv);
}

function draw() {
  background(30);

<<<<<<< HEAD

  // 최대 및 최소 주파수 사이의 변조기 주파수에 mouseY를 매핑하기
  let modFreq = map(mouseY, height, 0, modMinFreq, modMaxFreq);
  modulator.freq(modFreq);

  // 변조기의 진폭 바꾸기
  // 음수의 amp는 톱니 파형을 반대로 뒤집고, 두드리는 듯한 사운드를 만듭니다.
=======
  // map mouseY to modulator freq between a maximum and minimum frequency
  let modFreq = map(mouseY, height, 0, modMinFreq, modMaxFreq);
  modulator.freq(modFreq);

  // change the amplitude of the modulator
  // negative amp reverses the sawtooth waveform, and sounds percussive
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  //
  let modDepth = map(mouseX, 0, width, modMinDepth, modMaxDepth);
  modulator.amp(modDepth);

<<<<<<< HEAD
  // 파형 분석하기
  waveform = analyzer.waveform();

  // 파형 그리기
=======
  // analyze the waveform
  waveform = analyzer.waveform();

  // draw the shape of the waveform
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
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
<<<<<<< HEAD
  // 어떤 일이 일어나는 지에 대한 설명을 추가합니다.
=======
  // add a note about what's happening
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
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

<<<<<<< HEAD
// 사운드 토글을 위한 helper 함수
=======
// helper function to toggle sound
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
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
