/*
 * @name Puntillismo
 * @description Por Dan Shiffman. La posición horizontal del ratón controla el tamaño de
 * los puntos. Crea un efecto puntillista simple usando elipses coloreadas según los pixeles en una imagen.
 * <p><em><span class="small"> Para correr este ejemplo localmente, necesitarás un archivo de imagen
 * y un<a href="https://github.com/processing/p5.js/wiki/Local-server">
 * servidor local</a>.</span></em></p> corriendo.
 */
let img;
let smallPoint, largePoint;

function preload() {
  img = loadImage('assets/moonwalk.jpg');
}

function setup() {
  createCanvas(720, 400);
  smallPoint = 4;
  largePoint = 40;
  imageMode(CENTER);
  noStroke();
  background(255);
  img.loadPixels();
}

function draw() {
  let pointillize = map(mouseX, 0, width, smallPoint, largePoint);
  let x = floor(random(img.width));
  let y = floor(random(img.height));
  let pix = img.get(x, y);
  fill(pix, 128);
  ellipse(x, y, pointillize, pointillize);
}
