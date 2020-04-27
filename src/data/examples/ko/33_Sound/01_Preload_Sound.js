/*
 * @name 사운드 파일 미리 불러오기
 * @description preload()에서 loadSound()를 호출하여,
 * setup()이 호출되기 전에 미리 사운드 파일을 불러오도록 합니다.
 * 이 때, preload()에서 loadSound()를 호출하는 것이 가장 좋은 방법입니다.
 * 그렇지 않을 경우, 스케치에서 사운드 재생을 원하는 시점에 파일이 불러지지 않을 수 있습니다.
 *
 * <br><br><p><em><span class="small"> 로컬 프로젝트에서 이 예제를 실행하려면 적어도 한 개의 사운드 파일이 필요하고,
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound 라이브러리</a>를 추가해야 되며, 
 * <a href="https://github.com/processing/p5.js/wiki/Local-server">로컬 서버</a>를 작동시켜야 합니다.</span></em></p>
 */

let song;

function preload() {
  song = loadSound('assets/lucky_dragons_-_power_melody.mp3');
}

function setup() {
  createCanvas(710, 200);
  song.loop(); // 이제 노래 파일이 setup()에서 재생될 준비가 되었습니다.
               //preload에서 이미 한 차례 불러왔기 때문입니다.
  background(0, 255, 0);
}

function mousePressed() {
  if (song.isPlaying()) {
    // .isPlaying()은 불리언 값을 반환합니다.
    song.pause(); // .play()는 .pause() 지점에서 다시 시작합니다.
    background(255, 0, 0);
  } else {
    song.play();
    background(0, 255, 0);
  }
}
