/**
 *  @name 노이즈 드럼 엔벨로프
 *  @description  <p> 화이트 노이즈는 주파수 영역의 모든 부분에서
 *  동일한 에너지를 갖는, 임의의 오디오 신호입니다</p>
 *  <p>엔벨로프(envelope)는 시간/값의 쌍으로 정의되는
 *  일련의 페이드를 말합니다.</p>
 *  <p>이 예제에서는, p5.Env로 출력된 진폭을 제어하여
 *  p5.Noise를 마치 드럼처럼 "재생"합니다.
 *  p5.Amplitude는 스케치에 포함된 모든 사운드들의 레벨을 가져오며,
 *  작동 중인 엔벨로프를 이 값으로서 초록색 사각형으로 표현합니다.</p>
 * <p><em><span class="small"> 로컬 프로젝트에서 이 예제를 실행하려면 적어도 한 개의 사운드 파일이 필요하고,
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound 라이브러리</a>를 추가해야 됩니다.</span></em></p>
 */
let noise, env, analyzer;

function setup() {
  createCanvas(710, 200);
  noise = new p5.Noise(); // 그 외 타입들은 '갈색'과 '분홍'을 포함
  noise.start();

  // 노이즈 볼륨에 0 곱하기
  // (노이즈 재생 전까지 조용하기 위해서요!)
  noise.amp(0);

  env = new p5.Env();
  // 어택 시간, 감쇠 시간, 지속 속도, 릴리즈 시간 설정
  env.setADSR(0.001, 0.1, 0.2, 0.1);
  // 어택 레벨, 릴리즈 레벨 설정
  env.setRange(1, 0);

  // setInput()메소드로 입력값을 지정하지 않는 이상,
  // p5.Amplitude는 스케치에 포함된 모든 사운드를 분석할 것입니다.
  analyzer = new p5.Amplitude();
}

function draw() {
  background(0);

  // p5.Amplitude analyzer(분석 장치)로부터 볼륨 판독값 받아오기
  let level = analyzer.getLevel();

  // 레벨값을 사용하여 초록색 사각형 그리기
  let levelHeight = map(level, 0, 0.4, 0, height);
  fill(100, 250, 100);
  rect(0, height, width, -levelHeight);
}

function mousePressed() {
  env.play(noise);
}
