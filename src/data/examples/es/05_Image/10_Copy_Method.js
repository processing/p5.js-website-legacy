/*
 * @name Método copy()
 * @frame 600,400
 * @description Un ejemplo de cómo simular colorear una imagen con el método copy().
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
