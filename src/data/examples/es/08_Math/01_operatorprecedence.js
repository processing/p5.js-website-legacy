/*
 * @name Precedencia de operadores
 * @description Si no defines explicitamente el orden en que una
 * expresión es evaluada, son evaluadas basándose en la precedencia de operador.
 * Por ejemplo, en la instrucción "4+2*8", el 2 será
 * primero multiplicado por 8 y luego el resultado será sumado a 4.
 * Esto ocurre porque el "*" tiene una precedencia más alta que el "+". Para evitar
 * ambigüedad al leer el programa, se recomienda escribir esta instrucción
 * como "4+(2*8)". El orden de evaluación puede ser controlado por
 * la ubicación de paréntesis en el código. Una tabla de precedencia
 * de operadores sigue a continuación.
 */
// La precedencia más alta está al principio de esta lista y
// la más baja al final.
// Multiplicativo: * / %
// Aditivo: + -
// Relacional: < > <= >=
// Igualdad: == !=
// AND lógico: &&
// OR lógico: ||
// Asignación: = += -= *= /= %=
function setup() {
  createCanvas(710, 400);
  background(51);
  noFill();
  stroke(51);

  stroke(204);
  for (let i = 0; i < width - 20; i += 4) {
    // El 30 es sumado a 70 y luego se evalúa
    // si esto es mayor al valor actual de "i"
    // Por claridad, escribe "if (i > (30 + 70)) {"
    if (i > 30 + 70) {
      line(i, 0, i, 50);
    }
  }

  stroke(255);
  // El 2 es multiplicado por 8 y el resultado es sumado a el 4
  // Por claridad, escribe "rect(5 + (2 * 8), 0, 90, 20);"
  rect(4 + 2 * 8, 52, 290, 48);
  rect((4 + 2) * 8, 100, 290, 49);

  stroke(153);
  for (let i = 0; i < width; i += 2) {
    // Las instrucciones relacionales son evaluadas
    // primero, y luego las declaraciones lógicas AND y
    // finalmente el OR lógico. Por claridad, escribe:
    // "if(((i > 20) && (i < 50)) || ((i > 100) && (i < width-20))) {"
    if ((i > 20 && i < 50) || (i > 100 && i < width - 20)) {
      line(i, 151, i, height - 1);
    }
  }
}
