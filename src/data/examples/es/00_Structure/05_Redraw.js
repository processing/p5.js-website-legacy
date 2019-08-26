/*
 * @name Redraw
 * @description La función redraw() hace que draw() se ejecute una vez. En este ejemplo,
 * draw() se ejecutado una vez cada vez que el ratón hace click.
 */

let y;

// Las instrucciones dentro de la función setup()
// se ejecutan una vez, cuando el programa se inicia
function setup() {
  createCanvas(720, 400);
  stroke(255);
  noLoop();
  y = height * 0.5;
}

// Las instrucciones en draw() son ejecutadas hasta que
// el programa es parado. Cada instrucción es ejecutada
// en orden y luego de que la última línea es leída,
// se vuelve a ejecutar draw() desde el principio
function draw() {
  background(0);
  y = y - 4;
  if (y < 0) {
    y = height;
  }
  line(0, y, width, y);
}

function mousePressed() {
  redraw();
}
