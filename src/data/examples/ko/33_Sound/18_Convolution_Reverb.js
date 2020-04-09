/**
<<<<<<< HEAD
 * @name 컨볼루션 리버브
 * @description <p>The p5.Convolver
 * p5.Convolver는 컨볼루션을 사용하여 실제 공간 사운드를 재현합니다. 
 * 컨볼루션은 임펄스 응답(즉, 반향하는 공간의 사운드)으로 해당 공간의 사운드를 재생성합니다.
 * 컨볼루션으로 처리된 소리를 재생하려면 클릭하세요.
 * 매번 클릭할 때마다, 서로 다른 임펄스 응답으로 재생성된 사운드를 들을 수 있습니다.
 * 임펄스 응답만 재생하려면 아무 키나 누르세요.
 * <p><em><span class="small"> 로컬 프로젝트에서 이 예제를 실행하려면 적어도 한 개의 사운드 파일이 필요하고,
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound 라이브러리</a>를 추가해야 되며, 
 * <a href="https://github.com/processing/p5.js/wiki/Local-server">로컬 서버</a>를 작동시켜야 합니다.</span></em></p>
 * 컨볼루션 샘플들은 <a href="https://www.freesound.org/people/recordinghopkins/">
 * recordinghopkins</a>가 제작한 크리에이티브 커먼즈(CC)입니다.</span></p>
=======
 * @name Convolution Reverb
 * @description <p>The p5.Convolver can recreate the sound of actual
 * spaces using convolution. Convolution takes an Impulse Response,
 * (the sound of a room reverberating), and uses that to
 * recreate the sound of that space.</p><p>Click to play a sound through
 * convolution. Every time you click, the sound is convolved with
 * a different Impulse Response. To hear the Impulse Response itself,
 * press any key.</p>
 *
 * <p><em><span class="small">To run this example locally, you will need the
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound library</a>
 * a sound file, and a running <a href="https://github.com/processing/p5.js/wiki/Local-server">local server</a>.
 * These convolution samples are Creative Commons BY
 * <a href="https://www.freesound.org/people/recordinghopkins/">
 * recordinghopkins</a></em></span></p>
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
 */
let sound, env, cVerb, fft;
let currentIR = 0;
let rawImpulse;

function preload() {
<<<<<<< HEAD
  // 모든 임펄스/사운드들의 MP3 및 OGG 버전을 이 스케치에 포함시킵니다.
  soundFormats('ogg', 'mp3');

  // p5.Convolver 생성하기
  cVerb = createConvolver('assets/bx-spring');

  // bx-spring에 더해, cVerb.impulses 배열에 임펄스 응답 추가하기
=======
  // we have included both MP3 and OGG versions of all the impulses/sounds
  soundFormats('ogg', 'mp3');

  // create a p5.Convolver
  cVerb = createConvolver('assets/bx-spring');

  // add Impulse Responses to cVerb.impulses array, in addition to bx-spring
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  cVerb.addImpulse('assets/small-plate');
  cVerb.addImpulse('assets/drum');
  cVerb.addImpulse('assets/beatbox');
  cVerb.addImpulse('assets/concrete-tunnel');

<<<<<<< HEAD
  // p5.ConvultionReverb로 처리될 사운드 불러오기 
=======
  // load a sound that will be processed by the p5.ConvultionReverb
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  sound = loadSound('assets/Damscray_DancingTiger');
}

function setup() {
  createCanvas(710, 400);
  rawImpulse = loadSound('assets/' + cVerb.impulses[currentIR].name);

<<<<<<< HEAD
  // 마스터 출력으로부터 연결 해제하고...
  sound.disconnect();
  // ... cVerb로 처리하여
  // 오직 리버브만 들을 수 있도록 합니다.
=======
  // disconnect from master output...
  sound.disconnect();
  // ... and process with cVerb
  // so that we only hear the reverb
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  cVerb.process(sound);

  fft = new p5.FFT();
}

function draw() {
  background(30);
  fill(0, 255, 40);

  let spectrum = fft.analyze();

<<<<<<< HEAD
  // frequencySpectrum 배열에 있는 모든 값들을 사각형으로 그리기
=======
  // Draw every value in the frequencySpectrum array as a rectangle
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  noStroke();
  for (let i = 0; i < spectrum.length; i++) {
    let x = map(i, 0, spectrum.length, 0, width);
    let h = -height + map(spectrum[i], 0, 255, height, 0);
    rect(x, height, width / spectrum.length, h);
  }
}

function mousePressed() {
<<<<<<< HEAD
  // cVerb.impulses 배열 반복하기
=======
  // cycle through the array of cVerb.impulses
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  currentIR++;
  if (currentIR >= cVerb.impulses.length) {
    currentIR = 0;
  }
  cVerb.toggleImpulse(currentIR);

<<<<<<< HEAD
  // 임펄스를 거쳐 사운드 재생하기
  sound.play();

  // 현재 임펄스 응답 이름 보이기(파일 경로)
=======
  // play the sound through the impulse
  sound.play();

  // display the current Impulse Response name (the filepath)
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  println('Convolution Impulse Response: ' + cVerb.impulses[currentIR].name);

  rawImpulse.setPath('assets/' + cVerb.impulses[currentIR].name);
}

<<<<<<< HEAD
// 임펄스 재생하기(컨볼루션 없이)
=======
// play the impulse (without convolution)
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
function keyPressed() {
  rawImpulse.play();
}
