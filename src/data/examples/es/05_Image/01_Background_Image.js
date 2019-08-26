/*
 * @name Imagen de fondo
 * @description Este ejemplo presenta la manera más rápida de cargar una
 * imagen de fondo. Para cargar una imagen como fondo,
 * idebe tener el mismo ancho y altura que el programa.
 * <p><em><span class="small"> Para correr este ejemplo localmente, necesitarás un archivo de imagen
 * y un<a href="https://github.com/processing/p5.js/wiki/Local-server">
 * servidor local</a>.</span></em></p> corriendo.
 */

let bg;
let y = 0;

function setup() {
  // La imagen de fondo debe tener el mismo tamaño que el lienzo, según el método createCanvas().
  // En este programa, el tamaño de la imagen es de 720x400 pixels.
  bg = loadImage('assets/moonwalk.jpg');
  createCanvas(720, 400);
}

function draw() {
  background(bg);

  stroke(226, 204, 0);
  line(0, y, width, y);

  y++;
  if (y > height) {
    y = 0;
  }
}
