/*
<<<<<<< HEAD
 * @name 간질간질
 * @description 마우스 커서를 갖다대면 "tickle"이라는 단어가 간지럼을 타듯 떨립니다.
 * 너무 간지럽히면 화면 밖으로 튀어나갈 수도 있습니다 XD
 */
let message = 'tickle',
  font,
  bounds, // 텍스트의 바운딩 박스에 대한 x, y, w, h값
  fontsize = 60,
  x,
  y; // 텍스트의 x 와 y 좌표
=======
 * @name Tickle
 * @description The word "tickle" jitters when the cursor hovers over.
 * Sometimes, it can be tickled off the screen.
 */
let message = 'tickle',
  font,
  bounds, // holds x, y, w, h of the text's bounding box
  fontsize = 60,
  x,
  y; // x and y coordinates of the text
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753

function preload() {
  font = loadFont('assets/SourceSansPro-Regular.otf');
}

function setup() {
  createCanvas(710, 400);

<<<<<<< HEAD
  // 폰트 설정
  textFont(font);
  textSize(fontsize);

  // 초기화시 중앙 정렬을 하기 위해 텍스트의 너비 및 높이값을 받아옴
=======
  // set up the font
  textFont(font);
  textSize(fontsize);

  // get the width and height of the text so we can center it initially
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  bounds = font.textBounds(message, 0, 0, fontsize);
  x = width / 2 - bounds.w / 2;
  y = height / 2 - bounds.h / 2;
}

function draw() {
  background(204, 120);

<<<<<<< HEAD
  // 텍스트를 검정색으로 쓰고 그 바운딩 박스를 받아옴
=======
  // write the text in black and get its bounding box
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  fill(0);
  text(message, x, y);
  bounds = font.textBounds(message, x, y, fontsize);

<<<<<<< HEAD
  // 마우스가 바운딩 박스 안에 있는지를 확인하고, 안에 있다면 간질간질!
=======
  // check if the mouse is inside the bounding box and tickle if so
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  if (
    mouseX >= bounds.x &&
    mouseX <= bounds.x + bounds.w &&
    mouseY >= bounds.y &&
    mouseY <= bounds.y + bounds.h
  ) {
    x += random(-5, 5);
    y += random(-5, 5);
  }
}
