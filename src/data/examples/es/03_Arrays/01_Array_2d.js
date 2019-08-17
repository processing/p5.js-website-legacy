/*
 * @name Arreglo 2D
 * @description Demuestra la sintaxis para crear un arreglo
 de dos dimensiones (2D).
 * Se accede a los valores en un arreglo 2D a través de dos valores de índice.
 * Los arreglos 2D son útiles para almacenar imágenes. En este ejemplo, cada punto
 * es coloreado en relación a su distancia del centro de la imagen.
 */
let distances = [];
let maxDistance;
let spacer;

function setup() {
  createCanvas(720, 360);
  maxDistance = dist(width / 2, height / 2, width, height);
  for (let x = 0; x < width; x++) {
    distances[x] = []; // Crear un arreglo anidado
    for (let y = 0; y < height; y++) {
      let distance = dist(width / 2, height / 2, x, y);
      distances[x][y] = (distance / maxDistance) * 255;
    }
  }
  spacer = 10;
  noLoop(); // Correr draw() una vez y luego parar
}

function draw() {
  background(0);
  // Este loop anidado recorre los valores en los arreglos basado
  // en la variable spacer, así que hay más valores en el arreglo
  // que los que dibujamos. Cambia el valor de la variable spacer
  // para cambiar la densidad de los puntos.
  for (let x = 0; x < width; x += spacer) {
    for (let y = 0; y < height; y += spacer) {
      stroke(distances[x][y]);
      point(x + spacer / 2, y + spacer / 2);
    }
  }
}
