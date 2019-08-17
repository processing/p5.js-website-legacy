/*
 * @name Cargar y mostrar imagen
 * @description Las imágenes pueden ser cargadas y mostradas en la pantalla en su tamaño original o cualquier otro.
 * <p><em><span class="small"> Para correr este ejemplo localmente, necesitarás un archivo de imagen
 * y un<a href="https://github.com/processing/p5.js/wiki/Local-server">
 * servidor local</a>.</span></em></p> corriendo.
 */

let img; // Declarar variable 'img'.

function setup() {
  createCanvas(720, 400);
  img = loadImage('assets/moonwalk.jpg'); // Cargar la imagen
}

function draw() {
  // Muestra la imagen en su tamaño original en la posición (0,0)
  image(img, 0, 0);
  // Muestra la imagen en la posición (0, height/2) a la mitad del tamaño
  image(img, 0, height / 2, img.width / 2, img.height / 2);
}
