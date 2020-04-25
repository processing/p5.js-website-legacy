/**
 * @name 마이크 입력
 * @description <p>컴퓨터의 마이크를 통해 오디오 입력을 받습니다.
 * 마이크에 소리를 내어 타원이 떠오르게 해보세요.</p>
 * <p>주의: p5.AudioIn에는 p5.Amplitude 객체가 포함되어, 별도의
 * p5.Amplitude를 생성하지 않고도 p5.AudioIn에서 getLevel을 호출할 수 있습니다.</p>
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound 라이브러리</a>를 추가해야 되며, 
 * <a href="https://github.com/processing/p5.js/wiki/Local-server">로컬 서버</a>를 작동시켜야 합니다.</span></em></p> */
let mic;

function setup() {
  createCanvas(710, 200);

  // 오디오 입력 생성하기
  mic = new p5.AudioIn();

  // 오디오 입력 시작하기
  // 그 기본값은 .connect()(즉, 컴퓨터 스피커에 연결)되지 "않은" 상태입니다.
  mic.start();
}

function draw() {
  background(200);

  // 전체 볼륨(0과 1.0 사이) 받아오기
  let vol = mic.getLevel();
  fill(127);
  stroke(0);

  // 마이크 소리의 볼륨에 따라 떠있는 높이가 변하는 타원 그리기
  let h = map(vol, 0, 1, height, 0);
  ellipse(width / 2, h - 25, 50, 50);
}
