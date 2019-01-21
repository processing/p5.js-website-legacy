/*
 * @name Setup y Draw
 * @description El código dentro de la función draw() corre continuamente de arriba
 * a a bajo hasta que el programa es parado.
 */
let y = 100;

// Las instrucciones dentro de la función setup()
// se ejecutan una vez, al principio del programa
function setup() {
  // createCanvas() debe ser la primera instrucción
  createCanvas(720, 400);
  stroke(255); // Hacer que el color de trazado sea blanco
  frameRate(30);
}

// Las instrucciones en draw() son ejecutadas hasta que
// el programa es parado. Cada instrucción es ejecutada
// en orden y luego de que la última línea es leída,
// se vuelve a ejecutar draw() desde el principio
function draw() {
  background(0); // Hacer que el color del fondo sea negro
  y = y - 1;
  if (y < 0) {
    y = height;
  }
  line(0, y, width, y);
}
