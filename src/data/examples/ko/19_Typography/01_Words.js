/*
<<<<<<< HEAD
 * @name 단어
 * @description text()함수는 화면에 단어를 쓸 때 사용됩니다.
 * textAlign()함수로 단어들을 왼쪽, 가운데, 또는 오른쪽 정렬할 수 있으며, 
 * 도형과 마찬가지로, 단어들 역시 fill()로 그 색을 채울 수 있습니다.
=======
 * @name Words
 * @description The text() function is used for writing words to the screen.
 * The words can be aligned left, center, or right with the textAlign()
 * function, and like with shapes, words can be colored with fill().
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
 */
let font,
  fontsize = 40;

function preload() {
<<<<<<< HEAD
  // setup()과 draw()를 호출하기에 앞서,
  // assets 파일 경로에 .ttf 또는 .otf 폰트가 저장 및 로드되었는지 확인하세요. 
=======
  // Ensure the .ttf or .otf font stored in the assets directory
  // is loaded before setup() and draw() are called
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  font = loadFont('assets/SourceSansPro-Regular.otf');
}

function setup() {
  createCanvas(710, 400);

<<<<<<< HEAD
  // 텍스트 속성 설정
=======
  // Set text characteristics
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  textFont(font);
  textSize(fontsize);
  textAlign(CENTER, CENTER);
}

function draw() {
  background(160);

<<<<<<< HEAD
  // 텍스트를 오른쪽 정렬하고
  // 캔버스의 좌측 1/3 영역에서 drawWords() 실행하기
  textAlign(RIGHT);
  drawWords(width * 0.25);

  // 텍스트를 가운데 정렬하고
  // 캔버스의 가운데 영역에서 drawWords() 실행하기
  textAlign(CENTER);
  drawWords(width * 0.5);

  // 텍스트를 왼쪽 정렬하고
  // 캔버스의 우측 1/3 영역에서 drawWords() 실행하기
=======
  // Align the text to the right
  // and run drawWords() in the left third of the canvas
  textAlign(RIGHT);
  drawWords(width * 0.25);

  // Align the text in the center
  // and run drawWords() in the middle of the canvas
  textAlign(CENTER);
  drawWords(width * 0.5);

  // Align the text to the left
  // and run drawWords() in the right third of the canvas
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  textAlign(LEFT);
  drawWords(width * 0.75);
}

function drawWords(x) {
<<<<<<< HEAD
  // text() 함수에는 세 개의 매개 변수가 필요합니다:
  // 그려질 텍스트, 가로 위치, 그리고 세로 위치
=======
  // The text() function needs three parameters:
  // the text to draw, the horizontal position,
  // and the vertical position
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  fill(0);
  text('ichi', x, 80);

  fill(65);
  text('ni', x, 150);

  fill(190);
  text('san', x, 220);

  fill(255);
  text('shi', x, 290);
}
