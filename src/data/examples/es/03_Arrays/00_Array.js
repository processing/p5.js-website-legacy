/*
 * @name Arreglo
 * @description Un arreglo es una lista de datos. Cada  dato en un arreglo
 * es idenfiticado por un número de índice, representando su posición en
 * el arreglo. Los arreglos son indexados en cero, lo que significa que
 * el primer elemento en el arreglo es [0], el segundo es [1], y así.
 * En este ejemplo, un arregllo llamado "coswav" es creado y
 * llenado con valores de la función coseno. Estos datos son mostrados
 * de tres maneras diferentes en pantalla.
 */
var coswave = [];

function setup() {

  createCanvas(720, 360);
  for (var i = 0; i < width; i++) {
    var amount = map(i, 0, width, 0, PI);
    coswave[i] = abs(cos(amount));
  }
  background(255);
  noLoop();
}

function draw() {
  var y1 = 0;
  var y2 = height/3;
  for (var i = 0; i < width; i+=3) {
    stroke(coswave[i]*255);
    line(i, y1, i, y2);
  }

  y1 = y2;
  y2 = y1 + y1;
  for (var i = 0; i < width; i+=3) {
    stroke(coswave[i]*255 / 4);
    line(i, y1, i, y2);
  }

  y1 = y2;
  y2 = height;
  for (var i = 0; i < width; i+=3) {
    stroke(255 - coswave[i]*255);
    line(i, y1, i, y2);
  }
}
