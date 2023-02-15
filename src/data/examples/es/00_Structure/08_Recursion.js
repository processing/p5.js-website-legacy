/*
 *@name Recursión
 *@arialabel Círculo gris con dos círculos de color gris en medio. Cada uno de estos dos círculos grises tiene más círculos en medio. Este patrón continua hasta que no posible dibujar más dentro de ellos.
 *@description Una demostración de recursión, que significa funciones llamándose a sí mismas.
 * Una función recursiva debe tener una condición que la termine, sin ella la función caerá
 * en un ciclo infinito. Fíjate cómo la función drawCircle() se llama a sí misma al final del bloque de código.
 * Continúa haciéndolo hasta que la variable "level" es igual a 1.
 */

 function setup() {
  createCanvas(720, 560);
  noStroke();
  noLoop();
}

function draw() {
  drawCircle(width / 2, 280, 6);
}

function drawCircle(x, radius, level) {
  // 'level' es la variable que termina la recursión una vez que alcanza
  // un cierto valor (en este ejemplo, 1). Si una condición de terminación no es especificada, una función recursiva seguirá llamándose a sí misma una y otra vez
  // hasta que se acabe el espacio, un resultado no favorable!
  const tt = (126 * level) / 4.0;
  fill(tt);
  ellipse(x, height / 2, radius * 2, radius * 2);
  if (level > 1) {
    // 'level' disminuye por 1 en cada paso y por lo tanto hace que la condición de terminación sea
    // alcanzable
    level = level - 1;
    drawCircle(x - radius / 2, radius / 2, level);
    drawCircle(x + radius / 2, radius / 2, level);
  }
}
