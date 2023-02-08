/*
 * @name Setup y Draw
* @arialabel Linea blanca horizontal animada en un fondo de color negro la cual se mueve de abajo hacia arriba en la pantalla
 * @description El código dentro de la función draw() corre continuamente de arriba
 * abajo hasta que el programa es detenido. El
 * código en setup() es ejecutado una vez cuando el programa empieza.
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
// el programa es detenido. Cada instrucción es ejecutada
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
