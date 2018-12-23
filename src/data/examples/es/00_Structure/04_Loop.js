/*
 * @name Bucle
 * @description El código dentro de la función draw() corre continuamente de arriba a abajo hasta que el prorgrama para.
 */
let y = 100;

// Las instrucciones dentro de la función setup()
// se ejecutan una vez, cuando el programa empieza
function setup() {
  createCanvas(720, 400); // El tamaño debe ser la primera instrucción
  stroke(255); // Definir que el color del trazado sea blanco
  frameRate(30);
}

// Las instrucciones en draw() son ejecutadas hasta que
// el programa es parado. Cada instrucción es ejecutada
// en orden y luego de que la última línea es leída,
// se vuelve a ejecutar draw() desde el principio
function draw() {
  background(0); // Definir que el color del fondo sea negro
  y = y - 1;
  if (y < 0) {
    y = height;
  }
  line(0, y, width, y);
}
