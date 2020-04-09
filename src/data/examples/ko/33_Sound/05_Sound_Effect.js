/*
<<<<<<< HEAD
 * @name 사운드 효과
 * @description <p>마우스로 원 안쪽을 누르면 사운드 효과가 재생됩니다.</p>
 * <p><em><span class="small"> 로컬 프로젝트에서 이 예제를 실행하려면 적어도 한 개의 사운드 파일이 필요하고,
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound 라이브러리</a>를 추가해야 되며, 
 * <a href="https://github.com/processing/p5.js/wiki/Local-server">로컬 서버</a>를 작동시켜야 합니다.</span></em></p>
 */
// 다니엘 쉬프만(Daniel Shiffman)의 Learning Processing을 적용
// http://www.learningprocessing.com
// 초인종 샘플 출처: freesound.org에서 Corsica_S 제작,
// Creative Commons BY 3.0

// "doorbell(초인종)"을 설명하는 클래스 (실제로 버튼처럼 작동)
class Doorbell {
  constructor(x_, y_, r_) {
    // 위치와 크기
=======
 * @name Sound Effect
 * @description <p>Play a sound effect when the mouse is clicked inside the circle.</p>
 * <p><em><span class="small"> To run this example locally, you will need the
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound library</a>
 * a sound file, and a running <a href="https://github.com/processing/p5.js/wiki/Local-server">local server</a>.</span></em></p>
 */
// Adapted from Learning Processing by Daniel Shiffman
// http://www.learningprocessing.com
// Doorbell sample by Corsica_S via freesound.org,
// Creative Commons BY 3.0

// A Class to describe a "doorbell" (really a button)
class Doorbell {
  constructor(x_, y_, r_) {
    // Location and size
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
    this.x = x_;
    this.y = y_;
    this.r = r_;
  }
<<<<<<< HEAD
  // doorbell 안에 마우스 점이 있나요? (마우스 롤오버 등에 사용)
=======
  // Is a point inside the doorbell? (used for mouse rollover, etc.)
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  contains(mx, my) {
    return dist(mx, my, this.x, this.y) < this.r;
  }

<<<<<<< HEAD
  // doorbell을 보여주세요. (색상 부분은 하드코딩이네요. 더 나은 방법이 있을거에요.)
=======
  // Show the doorbell (hardcoded colors, could be improved)
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  display(mx, my) {
    if (this.contains(mx, my)) {
      fill(100);
    } else {
      fill(175);
    }
    stroke(0);
    strokeWeight(4);
    ellipse(this.x, this.y, this.r, this.r);
  }
}

<<<<<<< HEAD
// 사운드 파일 객체
let dingdong;

// 초인종 객체 (사운드를 트리거)
=======
// A sound file object
let dingdong;

// A doorbell object (that will trigger the sound)
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
let doorbell;

function setup() {
  createCanvas(200, 200);

<<<<<<< HEAD
  // 사운드 파일 불러오기
  // 스케치에 MP3와 OGG 버전을 포함시킵니다.
  soundFormats('mp3', 'ogg');
  dingdong = loadSound('assets/doorbell.mp3');

  // 새로운 초인종 만들기
=======
  // Load the sound file.
  // We have included both an MP3 and an OGG version.
  soundFormats('mp3', 'ogg');
  dingdong = loadSound('assets/doorbell.mp3');

  // Create a new doorbell
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  doorbell = new Doorbell(width / 2, height / 2, 64);
}

function draw() {
  background(255);
<<<<<<< HEAD
  // 초인종 보이기
=======
  // Show the doorbell
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  doorbell.display(mouseX, mouseY);
}

function mousePressed() {
<<<<<<< HEAD
  // 사용자가 초인종을 클릭하면, 사운드 재생하기!
=======
  // If the user clicks on the doorbell, play the sound!
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  if (doorbell.contains(mouseX, mouseY)) {
    dingdong.play();
  }
}
