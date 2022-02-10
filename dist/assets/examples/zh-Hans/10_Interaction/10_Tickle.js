/*
 * @name Tickle
 * @description "tickle" 这个单词会在光标移至它时抖动。
 * 有时还会抖出屏幕。
 */
let message = 'tickle',
  font,
  bounds, // 存储文本框的 x, y, w, h 值
  fontsize = 60,
  x,
  y; // 文本的 x 和 y 坐标

function preload() {
  font = loadFont('assets/SourceSansPro-Regular.otf');
}

function setup() {
  createCanvas(710, 400);

  // 设置字体
  textFont(font);
  textSize(fontsize);

  // 获取文本的宽度和高度，以便我们可以首先将其居中
  bounds = font.textBounds(message, 0, 0, fontsize);
  x = width / 2 - bounds.w / 2;
  y = height / 2 - bounds.h / 2;
}

function draw() {
  background(204, 120);

  // 写出黑色的文本并获取其文本框
  fill(0);
  text(message, x, y);
  bounds = font.textBounds(message, x, y, fontsize);

  // 检查鼠标是否在文本框里；如果在文本框内，抖动文本
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
