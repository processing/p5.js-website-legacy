/*
 * @name Operadores lógicos
 * @description Los operadores lógicos AND (&&) y OR (||), (Y y Ó, respectivamente),son usados para
 * combinar instrucciones relacionales simples en expresiones más complejas
 * El operador NOT (!), NO, es usado para negar una declaración de carácter boolean.
 */
let test = false;

function setup() {
  createCanvas(720, 360);
  background(126);

  for (let i = 5; i <= height; i += 5) {
    // Y lógico
    stroke(0);
    if (i > 35 && i < 100) {
      line(width / 4, i, width / 2, i);
      test = false;
    }

    // Ó lógico
    stroke(76);
    if (i <= 35 || i >= 100) {
      line(width / 2, i, width, i);
      test = true;
    }

    // Probando si un valor boolean es "verdadero"
    // La expresión "if(test)" es equivalente a "if(test == true)"
    if (test) {
      stroke(0);
      point(width / 3, i);
    }

    // Probando si un valor boolean es "falso"
    // La expresión "if(!test)" es equivalente a "if(test == false)"
    if (!test) {
      stroke(255);
      point(width / 4, i);
    }
  }
}
