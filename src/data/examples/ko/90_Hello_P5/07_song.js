/*
<<<<<<< HEAD
 * @name 노래
 * @frame 720, 430
 * @description 노래를 재생하세요.
 * <p><em><span class="small"> 로컬 프로젝트에서 이 예제를 실행하려면, 
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.Sound 라이브러리</a>.
 * </em>를 추가해야 됩니다.</p>
 */
// MIDI 음계의 음표들
let notes = [ 60, 62, 64, 65, 67, 69, 71];

// 노래를 자동 재생하기 위한 처리
=======
 * @name Song
 * @frame 720, 430
 * @description Play a song.
 * You will need to include the
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound
 * library</a> for this example to work in your own project.
 */
// The midi notes of a scale
let notes = [ 60, 62, 64, 65, 67, 69, 71];

// For automatically playing the song
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
let index = 0;
let song = [
  { note: 4, duration: 400, display: "D" },
  { note: 0, duration: 200, display: "G" },
  { note: 1, duration: 200, display: "A" },
  { note: 2, duration: 200, display: "B" },
  { note: 3, duration: 200, display: "C" },
  { note: 4, duration: 400, display: "D" },
  { note: 0, duration: 400, display: "G" },
  { note: 0, duration: 400, display: "G" }
];
let trigger = 0;
let autoplay = false;
let osc;

function setup() {
  createCanvas(720, 400);
  let div = createDiv("Click to play notes or ")
  div.id("instructions");
  let button = createButton("play song automatically.");
  button.parent("instructions");
<<<<<<< HEAD
  // 자동 재생 트리거하기
=======
  // Trigger automatically playing
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  button.mousePressed(function() {
    if (!autoplay) {
      index = 0;
      autoplay = true;
    }
  });

<<<<<<< HEAD
  // 삼각형 오실레이터
  osc = new p5.TriOsc();
  // 무음 시작
=======
  // A triangle oscillator
  osc = new p5.TriOsc();
  // Start silent
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  osc.start();
  osc.amp(0);
}

<<<<<<< HEAD
// 음표를 재생하기 위한 함수
function playNote(note, duration) {
  osc.freq(midiToFreq(note));
  // 음표를 페이드인하기
  osc.fade(0.5,0.2);

  // 만약 재생 시간을 설정한다면, 페이드 아웃
=======
// A function to play a note
function playNote(note, duration) {
  osc.freq(midiToFreq(note));
  // Fade it in
  osc.fade(0.5,0.2);

  // If we sest a duration, fade it out
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  if (duration) {
    setTimeout(function() {
      osc.fade(0,0.2);
    }, duration-50);
  }
}

function draw() {

<<<<<<< HEAD
  // 만약 현재 자동 재생 중이고 다음 음표를 재생할 때가 되었다면,
  if (autoplay && millis() > trigger){
    playNote(notes[song[index].note], song[index].duration);
    trigger = millis() + song[index].duration;
    // 다음 음표로 이동하기
    index ++;
  // 끝에 다다랐다면, 자동 재생 중지
=======
  // If we are autoplaying and it's time for the next note
  if (autoplay && millis() > trigger){
    playNote(notes[song[index].note], song[index].duration);
    trigger = millis() + song[index].duration;
    // Move to the next note
    index ++;
  // We're at the end, stop autoplaying.
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  } else if (index >= song.length) {
    autoplay = false;
  }


<<<<<<< HEAD
  // 키보드 긜기

  // 각 건반의 너비
  let w = width / notes.length;
  for (let i = 0; i < notes.length; i++) {
    let x = i * w;
    // 마우스가 건반 위에 있다면,
    if (mouseX > x && mouseX < x + w && mouseY < height) {
      // 마우스를 클릭 중이라면,
      if (mouseIsPressed) {
        fill(100,255,200);
      // 또는 마우스가 건반 위를 롤오버 중이라면,
=======
  // Draw a keyboard

  // The width for each key
  let w = width / notes.length;
  for (let i = 0; i < notes.length; i++) {
    let x = i * w;
    // If the mouse is over the key
    if (mouseX > x && mouseX < x + w && mouseY < height) {
      // If we're clicking
      if (mouseIsPressed) {
        fill(100,255,200);
      // Or just rolling over
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
      } else {
        fill(127);
      }
    } else {
      fill(200);
    }

<<<<<<< HEAD
    // 또는, 노래가 재생 중이라면 하이라이트를 줍니다.  
=======
    // Or if we're playing the song, let's highlight it too
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
    if (autoplay && i === song[index-1].note) {
      fill(100,255,200);
    }

<<<<<<< HEAD
    // 건반 그리기
=======
    // Draw the key
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
    rect(x, 0, w-1, height-1);
  }

}

<<<<<<< HEAD
// 클릭하면,
function mousePressed(event) {
  if(event.button == 0 && event.clientX < width && event.clientY < height) {
    // 건반 인덱스에 마우스를 매핑하기
=======
// When we click
function mousePressed(event) {
  if(event.button == 0 && event.clientX < width && event.clientY < height) {
    // Map mouse to the key index
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
    let key = floor(map(mouseX, 0, width, 0, notes.length));
    playNote(notes[key]);
  }
}

<<<<<<< HEAD
// 마우스 버튼을 놓으면 페이드 아웃하기
=======
// Fade it out when we release
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
function mouseReleased() {
  osc.fade(0,0.5);
}
