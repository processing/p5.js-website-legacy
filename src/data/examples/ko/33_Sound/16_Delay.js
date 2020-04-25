/**
 *  @name 딜레이 필터
 *  @description
 *  마우스를 클릭하여 p5.Delay로 처리된 사운드 파일을 들어보세요.
 *  MouseX는 p5.Delay필터의 주파수를 조정합니다.
 *  MouseY는 p5.Delay필터의 시간과 울림 정도를 조정합니다.
 *  Amplitude(진폭) 객체로 출력된 사운드의 볼륨을 시각화해보세요.
 *
 * <p><em><span class="small"> 로컬 프로젝트에서 이 예제를 실행하려면 적어도 한 개의 사운드 파일이 필요하고,
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound 라이브러리</a>를 추가해야 되며, 
 * <a href="https://github.com/processing/p5.js/wiki/Local-server">로컬 서버</a>를 작동시켜야 합니다.</span></em></p>
 */

let soundFile, analyzer, delay;

function preload() {
  soundFormats('ogg', 'mp3');
  soundFile = loadSound('assets/beatbox.mp3');
}

function setup() {
  createCanvas(710, 400);

  soundFile.disconnect(); // 여기선 딜레이만 들을 수 있습니다.

  delay = new p5.Delay();
  delay.process(soundFile, 0.12, 0.7, 2300);
  delay.setType('pingPong'); // 스테레오 효과

  analyzer = new p5.Amplitude();
}

function draw() {
  background(0);

  // p5.Amplitude 분석 장치의 볼륨 판독 내용 받아오기
  let level = analyzer.getLevel();

  // 레벨을 사용하여 초록색 사각형 그리기
  let levelHeight = map(level, 0, 0.1, 0, height);
  fill(100, 250, 100);
  rect(0, height, width, -levelHeight);

  let filterFreq = map(mouseX, 0, width, 60, 15000);
  filterFreq = constrain(filterFreq, 60, 15000);
  let filterRes = map(mouseY, 0, height, 3, 0.01);
  filterRes = constrain(filterRes, 0.01, 3);
  delay.filter(filterFreq, filterRes);
  let delTime = map(mouseY, 0, width, 0.2, 0.01);
  delTime = constrain(delTime, 0.01, 0.2);
  delay.delayTime(delTime);
}

function mousePressed() {
  soundFile.play();
}
