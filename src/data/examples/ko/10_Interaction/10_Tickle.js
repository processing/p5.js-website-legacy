/*
 * @name 간질간질
 * @description 마우스 커서를 "tickle"에 올리면, 마치 간지럼을 타는듯 떨립니다.
 * 너무 간지럽히면 화면 밖으로 튀어나갈 수도 있습니다 >_<
 */
let message = 'tickle',
  font,
  bounds, // 텍스트의 바운딩 박스에 대한 x, y, w, h값
  fontsize = 60,
  x,
  y; // 텍스트의 x 와 y 좌표

function preload() {
  font = loadFont('assets/SourceSansPro-Regular.otf');
}

function setup() {
  createCanvas(710, 400);

  // 폰트 설정
  textFont(font);
  textSize(fontsize);

  // 초기화시 중앙 정렬을 위해 텍스트의 너비 및 높이값 받아오기
  bounds = font.textBounds(message, 0, 0, fontsize);
  x = width / 2 - bounds.w / 2;
  y = height / 2 - bounds.h / 2;
}

function draw() {
  background(204, 120);

  // 텍스트를 검정색으로 쓰고, 그 바운딩 박스 받아오기
  fill(0);
  text(message, x, y);
  bounds = font.textBounds(message, x, y, fontsize);

  // 마우스가 바운딩 박스 안에 있는지 확인하고, 안에 있다면 간질간질!
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
