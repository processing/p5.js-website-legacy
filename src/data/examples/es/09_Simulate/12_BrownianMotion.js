/*
 * @name Movimiento browniano
 * @description Grabar movimiento aleatorio como una líena continua.
 * Puerto de un ejemplo original para Processing.
 */

var num = 2000;
var range = 6;

var ax = [];
var ay = [];


function setup() {
  createCanvas(710, 400);
  for ( var i = 0; i < num; i++ ) {
    ax[i] = width / 2;
    ay[i] = height / 2;
  }
  frameRate(30);
}

function draw() {
  background(51);

  // Mover todos los elementos un lugar a la izquierda
  for ( var i = 1; i < num; i++ ) {
    ax[i - 1] = ax[i];
    ay[i - 1] = ay[i];
  }

  // Poner un nuevo valor al final del arreglo
  ax[num - 1] += random(-range, range);
  ay[num - 1] += random(-range, range);

  // Limitar la posición de todos los puntos a estar dentro de la pantalla
  ax[num - 1] = constrain(ax[num - 1], 0, width);
  ay[num - 1] = constrain(ay[num - 1], 0, height);

  // Dibujar una línea conectando los puntos
  for ( var j = 1; j < num; j++ ) {
    var val = j / num * 204.0 + 51;
    stroke(val);
    line(ax[j - 1], ay[j - 1], ax[j], ay[j]);
  }
}
