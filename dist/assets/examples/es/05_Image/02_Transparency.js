/*
 * @name Transparencia
 * @description Mueve el cursor de izquierda a derecha a lo largo de la imagen para cambiar su
 * posición. Este program superpone una imagen sobre otra, modificando el valor alpha de la imagen con la función tint().
 * <p><em><span class="small"> Para correr este ejemplo localmente, necesitarás un archivo de imagen
 * y un<a href="https://github.com/processing/p5.js/wiki/Local-server">
 * servidor local</a>.</span></em></p> corriendo.
 */
let img;
let offset = 0;
let easing = 0.05;

function setup() {
  createCanvas(720, 400);
  img = loadImage('assets/moonwalk.jpg'); // Cargar una imagen al programa
}

function draw() {
  image(img, 0, 0); // Mostrar al máximo de opacidad
  let dx = mouseX - img.width / 2 - offset;
  offset += dx * easing;
  tint(255, 127); // Mostrar a media opacidad
  image(img, offset, 0);
}
