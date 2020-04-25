/*
 * @name 단어
 * @description text()함수는 화면에 단어를 쓸 때 사용됩니다.
 * textAlign()함수로 단어들을 왼쪽, 가운데, 또는 오른쪽 정렬할 수 있으며, 
 * 도형과 마찬가지로, 단어들 역시 fill()로 그 색을 채울 수 있습니다.
 */
let font,
  fontsize = 40;

function preload() {
  // setup()과 draw()를 호출하기에 앞서,
  // assets 파일 경로에 .ttf 또는 .otf 폰트가 저장 및 로드되었는지 확인하세요. 
  font = loadFont('assets/SourceSansPro-Regular.otf');
}

function setup() {
  createCanvas(710, 400);

  // 텍스트 속성 설정
  textFont(font);
  textSize(fontsize);
  textAlign(CENTER, CENTER);
}

function draw() {
  background(160);

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
  textAlign(LEFT);
  drawWords(width * 0.75);
}

function drawWords(x) {
  // text() 함수에는 세 개의 매개 변수가 필요합니다:
  // 그려질 텍스트, 가로 위치, 그리고 세로 위치
  fill(0);
  text('ichi', x, 80);

  fill(65);
  text('ni', x, 150);

  fill(190);
  text('san', x, 220);

  fill(255);
  text('shi', x, 290);
}
