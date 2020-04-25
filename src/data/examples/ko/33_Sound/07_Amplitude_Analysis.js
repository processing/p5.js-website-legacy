/**
 * @name 진폭 측정
 * @description <p>p5.Amplitude로 사운드의 진폭을 분석합니다.</p>
 *
 *  <p><b>진폭(amplitude)</b>은 진동의 크기를 말합니다.
 *  사운드는 진동이므로, 볼륨/음량과 밀접한 관계를 갖습니다.</p>
 *
 * <p><code>getLevel()</code> 메소드는 짧은 시간 동안 수집된
 * 진폭값(1024 샘플)을 배열에 담습니다.
 * 그 다음, 이 값들의 <b>제곱 평균 제곱근(RMS)</b>을 반환합니다.</p>
 *
 * <p>디지털 오디오의 본래 진폭값은 -1.0과 1.0 사이입니다.
 * 하지만, RMS는 제곱이므로 항상 양수입니다.
 * 또한, RMS는 초당 44,000배의 속도에서 샘플링된 순간 진폭 판독값을 사용하는 대신
 * 시간에 따른 평균값(이 경우, 1024 샘플)을 사용하여, 진폭을 듣는 방식을 더욱 잘 나타냅니다.</p>
 * <p><em><span class="small"> 로컬 프로젝트에서 이 예제를 실행하려면 적어도 한 개의 사운드 파일이 필요하고,
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound 라이브러리</a>를 추가해야 되며, 
 * <a href="https://github.com/processing/p5.js/wiki/Local-server">로컬 서버</a>를 작동시켜야 합니다.</span></em></p>
 */
let song, analyzer;

function preload() {
  song = loadSound('assets/lucky_dragons_-_power_melody.mp3');
}

function setup() {
  createCanvas(710, 200);
  song.loop();

  // 새로운 진폭 분석기 생성
  analyzer = new p5.Amplitude();

  // 볼륨 분석기에 입력값 패치하기
  analyzer.setInput(song);
}

function draw() {
  background(255);

  // 평균 진폭값(RMS) 받아오기
  let rms = analyzer.getLevel();
  fill(127);
  stroke(0);

  // 볼륨과 비례한 크기의 타원 그리기
  ellipse(width / 2, height / 2, 10 + rms * 200, 10 + rms * 200);
}
