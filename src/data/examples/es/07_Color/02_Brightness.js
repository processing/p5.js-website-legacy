/*
 * @name Brillo
 * @description Por Dan Shiffman. Este programa ajusta el brillo de una parte de
 * la imagen, calculando la distancia de cada pixel al ratón.
 * <p><em><span class="small"> Para correr este ejemplo localmente, necesitarás al menos un archivo de imagen
 * y un <a href="https://github.com/processing/p5.js/wiki/Local-server">servidor local</a> corriendo.</span></em></p>
 */
var img;

function preload() {
  img = loadImage("assets/moonwalk.jpg");
}

function setup() {
  createCanvas(720, 200);
  pixelDensity(1);
  img.loadPixels();
  loadPixels();
}

function draw() {
  for (var x = 0; x < img.width; x++) {
    for (var y = 0; y < img.height; y++ ) {
      // Calcular la posición 1D de una matriz 2D
      var loc = (x + y*img.width)*4;
      // Obtener los valores R,G,B de una imagen
      var r,g,b;
      r = img.pixels[loc];
      // Calcular una cantidad a cambiar de brillo basado en la proximidad al ratón
      var maxdist = 50;
      var d = dist(x, y, mouseX, mouseY);
      var adjustbrightness = 255*(maxdist-d)/maxdist;
      r += adjustbrightness;
      // Limitar RGB para asegurarse de estar dentro del rango 0-255 de color
      r = constrain(r, 0, 255);
      // Hacer un nuevo color y definir el pixel en la ventana
      //color c = color(r, g, b);
      var pixloc = (y*width + x)*4;
      pixels[pixloc] = r;
      pixels[pixloc+1] = r;
      pixels[pixloc+2] = r;
      pixels[pixloc+3] = 255;
    }
  }
  updatePixels();
}
