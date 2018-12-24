/*
 * @name No Loop
 * @description La función noLoop() hace que draw() se ejecuta solo una vez.
 * Sin ejecutar noLoop(), el código dentro de draw() es ejecutado continuamente.
 */
let y;

// The statements in the setup() function
// execute once when the program begins
function setup() {
  // createCanvas should be the first statement
  createCanvas(720, 400);
  stroke(255); // Set line drawing color to white
  noLoop();

  y = height * 0.5;
}

// Las instrucciones en draw() son ejecutadas hasta que
// el programa es parado. Cada instrucción es ejecutada
// en orden y luego de que la última línea es leída,
// se vuelve a ejecutar draw() desde el principio
function draw() {
  background(0); // Set the background to black
  y = y - 1;
  if (y < 0) {
    y = height;
  }
  line(0, y, width, y);
}
