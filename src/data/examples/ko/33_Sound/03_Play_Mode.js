/*
 * @name 재생 모드
 * @description
 * <p>'sustain' 모드에서는 사운드가 겹쳐서 재생됩니다.
 * 'restart' 모드에서는 사운드가 멈췄다가 다시 재생합니다.
 * 마우스 클릭으로 사운드 파일을 재생해보세요.
 * 동시에 여러 사운드를 재생해보세요! 아무 자판을 눌러 재생 모드를 변경합니다.</p>
 * <p><em><span class="small"> 로컬 프로젝트에서 이 예제를 실행하려면 적어도 한 개의 사운드 파일이 필요하고,
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound 라이브러리</a>를 추가해야 되며, 
 * <a href="https://github.com/processing/p5.js/wiki/Local-server">로컬 서버</a>를 작동시켜야 합니다.</span></em></p>
 */
let playMode = 'sustain';
let sample;

function setup() {
  createCanvas(710, 50);
  soundFormats('mp3', 'ogg');
  sample = loadSound('assets/Damscray_-_Dancing_Tiger_02.mp3');
}

function draw() {
  background(255, 255, 0);
  let str = 'Click here to play! Press key to toggle play mode.';
  str += ' Current Play Mode: ' + playMode + '.';
  text(str, 10, height / 2);
}

function mouseClicked() {
  sample.play();
}
function keyPressed(k) {
  togglePlayMode();
}

function togglePlayMode() {
  if (playMode === 'sustain') {
    playMode = 'restart';
  } else {
    playMode = 'sustain';
  }
  sample.playMode(playMode);
}
