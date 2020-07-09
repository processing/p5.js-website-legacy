/*
 * @name 재생 속도
 * @description <p>사운드 파일을 불러와 재생 속도와 볼륨을 mouseY에 맵핑합니다.
 * 여기서 재생 속도란, 웹 오디오가 사운드 파일 정보를 처리하는 속도를 말합니다.
 * 재생 속도가 느리면 사운드의 지속 시간을 늘릴 뿐 아니라,
 * 느린 주파수에서 재생되어 음고(pitch)를 감소시킵니다.</p>
 * <p><em><span class="small"> 로컬 프로젝트에서 이 예제를 실행하려면 적어도 한 개의 사운드 파일이 필요하고,
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound 라이브러리</a>를 추가해야 되며, 
 * <a href="https://github.com/processing/p5.js/wiki/Local-server">로컬 서버</a>를 작동시켜야 합니다.</span></em></p>
 */
// 사운드 파일 객체
let song;

function preload() {
  // 사운드 파일 불러오기
  song = loadSound('assets/Damscray_DancingTiger.mp3');
}

function setup() {
  createCanvas(710, 400);

  // 사운드 무한 반복하기
  // (뭐, 적어도 stop()이 호출되기 전까지요)
  song.loop();
}

function draw() {
  background(200);

  // 볼륨 범위를 0 과 1.0 사이로 설정
  let volume = map(mouseX, 0, width, 0, 1);
  volume = constrain(volume, 0, 1);
  song.amp(volume);

  // 재생 속도 범위를 0.1 과 4 사이로 설정
  // 재생 속도를 변경하면 음고 또한 달라집니다.
  let speed = map(mouseY, 0.1, height, 0, 2);
  speed = constrain(speed, 0.01, 4);
  song.rate(speed);

  // 원을 그려 어떤 일이 일어나는지 확인하기
  stroke(0);
  fill(51, 100);
  ellipse(mouseX, 100, 48, 48);
  stroke(0);
  fill(51, 100);
  ellipse(100, mouseY, 48, 48);
}
