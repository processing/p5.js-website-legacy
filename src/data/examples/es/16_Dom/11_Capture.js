/*
 * @name Captura de video
 * @frame 710,240
 * @description Captura video desde la webcam, muéstralo
 * en el lienzo con un filtro de inversión. Fíjate que por defecto la
 * captura también aparece. Puedes esconderla
 * si quitas el comentario a la línea de código capture.hide().
 * Para correr este ejemplo localmente, necesitarás correr un 
 * <a href="https://github.com/processing/p5.js/wiki/Local-server">servidor local</a>.
 */
let capture;

function setup() {
  createCanvas(390, 240);
  capture = createCapture(VIDEO);
  capture.size(320, 240);
  //capture.hide();
}

function draw() {
  background(255);
  image(capture, 0, 0, 320, 240);
  filter(INVERT);
}
