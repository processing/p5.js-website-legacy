/*
 * @name Copy() 函数
 * @frame 600,400
 * @description 一个如何使用 copy() 函数模拟为图像着色的范例。
 */
let draft, ready;
function preload() {
  ready = loadImage("assets/parrot-color.png");
  draft = loadImage("assets/parrot-bw.png");
}
function setup() {
  createCanvas(600, 400);
  noCursor();
  cursor("assets/brush.png", 20, -10);
  image(ready, 0, 0);
  image(draft, 0, 0);
}
function mouseDragged() {
  copy(ready, mouseX, mouseY, 20, 20, mouseX, mouseY, 20, 20);
}
