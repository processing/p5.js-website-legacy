/**
<<<<<<< HEAD
 *  @name 사운드 확장자
 *  @description <p>특허 문제로 인해, 모든 웹 브라우저가 지원하는
 *  단일의 사운드 파일 형식은 존재하지 않습니다. 
 *  예를 들어, 
 *  <a href="http://caniuse.com/#feat=mp3">mp3</a>의 경우, OSX나 윈도우즈의
 *  주요 브라우저 최신 버전에서 지원하긴 하지만, 일부 운영 체제나 브라우저에서는
 *  사용하지 못할 수 있습니다.</p>
 *
 *  <p>사운드 파일의 완전한 호환성을 보장하기 위해, 동일한 사운드 파일을 
 *  여러가지 형식으로 스케치에 포함시킬 수 있습니다. 'sound.mp3'나 'sound.ogg'가 그 예입니다.
 *  (Ogg는 mp3의 대안형 오픈 소스입니다.) <a href="http://media.io/">media.io</a>
 *  에서 오디오 파일을 웹-친화적인 형식으로 무료 변환할 수 있습니다.</p>.
 *
 *  <p>soundFormats() 메소드는 현재 스케치에 포함된 사운드 파일의 형식들을 loadSound에게 지정합니다.
 *  그러면, loadSound는 지정된 형식들 중 클라이언트의 웹 브라우저가 지원하는
 *  첫번째 형식을 불러오도록 시도할 것입니다.</p>
 *
 * <p><em><span class="small"> 로컬 프로젝트에서 이 예제를 실행하려면 적어도 한 개의 사운드 파일이 필요하고,
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound 라이브러리</a>를 추가해야 되며, 
 * <a href="https://github.com/processing/p5.js/wiki/Local-server">로컬 서버</a>를 작동시켜야 합니다.</span></em></p> */
let song;

function preload() {
  // .ogg와 .mp3 파일 모두를 스케치에 포함시키기
  soundFormats('ogg', 'mp3');

  // 만약 mp3를 이 브라우저가 지원하지 않는다면,
  // loadSound는 스케치에 포함된 형식인 ogg 파일을 불러옵니다.
=======
 *  @name soundFormats
 *  @description <p>Technically, due to patent issues, there is no single
 *  sound format that is supported by all web browsers. While
 *  <a href="http://caniuse.com/#feat=mp3">mp3 is supported</a> across the
 *  latest versions of major browsers on OS X and Windows, for example,
 *  it may not be available on some less mainstream operating systems and
 *  browsers.</p>
 *
 *  <p>To ensure full compatibility, you can include the same sound file
 *  in multiple formats, e.g. 'sound.mp3' and 'sound.ogg'. (Ogg is an
 *  open source alternative to mp3.) You can convert audio files
 *  into web friendly formats for free online at <a href="
 *  http://media.io/">media.io</a></p>.
 *
 *  <p>The soundFormats() method tells loadSound which formats
 *  we have included with our sketch. Then, loadSound will
 *  attempt to load the first format that is supported by the
 *  client's web browser.</p>
 *
 * <p><em><span class="small"> To run this example locally, you will need the
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound library</a>
 * a sound file, and a running <a href="https://github.com/processing/p5.js/wiki/Local-server">local server</a>.</span></em></p>
 */
let song;

function preload() {
  // we have included both an .ogg file and an .mp3 file
  soundFormats('ogg', 'mp3');

  // if mp3 is not supported by this browser,
  // loadSound will load the ogg file
  // we have included with our sketch
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  song = loadSound('assets/lucky_dragons_-_power_melody.mp3');
}

function setup() {
  createCanvas(710, 200);

<<<<<<< HEAD
  // preload()중에 사운드 파일을 미리 불러와, setup()에서 재생할 수 있도록 준비
=======
  // song loaded during preload(), ready to play in setup()
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  song.play();
  background(0, 255, 0);
}

function mousePressed() {
  if (song.isPlaying()) {
<<<<<<< HEAD
    // .isPlaying()은 불리언 값을 반환합니다.
    song.pause();
    background(255, 0, 0);
  } else {
    song.play(); // playback은 pause(일시정지) 지점에서 다시 재생합니다.
=======
    // .isPlaying() returns a boolean
    song.pause();
    background(255, 0, 0);
  } else {
    song.play(); // playback will resume from the pause position
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
    background(0, 255, 0);
  }
}
