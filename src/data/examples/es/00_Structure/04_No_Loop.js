/*
 * @name No Loop
 * @arialabel Linea horizontal de color blanco en medio de un fondo color negro
 * @description La función noLoop() hace que draw() se ejecute solo una vez.
 * Sin ejecutar noLoop(), el código dentro de draw() es ejecutado continuamente.
 */
let y;

// Las sentencias en la función setup()
// se ejecutan una vez cuando el programa empieza.
function setup() {
  // createCanvas deberá ser la primera sentencia
  createCanvas(720, 400);
  stroke(255); // Hace que el color de trazado sea blanco
  noLoop();

  y = height * 0.5;
}

// Las instrucciones en draw() son ejecutadas hasta que
// el programa es detenido. Cada instrucción es ejecutada
// en orden y luego de que la última línea es leída,
// se vuelve a ejecutar draw() desde el principio
function draw() {
  background(0); // Pone el fondo en negro
  y = y - 1;
  if (y < 0) {
    y = height;
  }
  line(0, y, width, y);
}
