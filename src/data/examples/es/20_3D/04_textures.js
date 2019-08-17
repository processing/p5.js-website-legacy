/*
 * @name Texturas
 * @description Tanto imágenes como videos pueden ser usados como texturas.
 */
// fuente del video: https://vimeo.com/90312869
let img;
let vid;
let theta = 0;

function setup() {
  createCanvas(710, 400, WEBGL);

  img = loadImage('assets/cat.jpg');
  vid = createVideo(['assets/360video_256crop_v2.mp4']);
  vid.elt.muted = true;
  vid.loop();
  vid.hide();
}

function draw() {
  background(250);
  translate(-220, 0, 0);
  push();
  rotateZ(theta * mouseX * 0.001);
  rotateX(theta * mouseX * 0.001);
  rotateY(theta * mouseX * 0.001);
  //pasar una imagen como textura
  texture(vid);
  sphere(150);
  pop();
  translate(440, 0, 0);
  push();
  rotateZ(theta * 0.1);
  rotateX(theta * 0.1);
  rotateY(theta * 0.1);
  texture(img);
  box(100, 100, 100);
  pop();
  theta += 0.05;
}
