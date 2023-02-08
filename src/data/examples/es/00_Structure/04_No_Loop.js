/*
 * @name No Loop
 * @description La función noLoop() hace que draw() se ejecuta solo una vez.
 * Sin ejecutar noLoop(), el código dentro de draw() es ejecutado continuamente.
 */
let y;

// Las sentencias en la función setup()
// se ejecutan una vez cuando el programa empieza.
function setup() {
  // createCanvas deberá ser la primera sentencia
  createCanvas(720, 400);
  stroke(255); // Pone al color blanco para dibujar lineas
  noLoop();

  y = height * 0.5;
}

// Las instrucciones en draw() son ejecutadas hasta que
// el programa es parado. Cada instrucción es ejecutada
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
