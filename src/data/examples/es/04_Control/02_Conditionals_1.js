/*
 * @name Condicionales 1
 * @description Las condiciones son como preguntas.
 * Permiten que un programa decida ejecutar una acción
 * si la respuesta a una pregunta es afirmativa o hacer otra
 * acción si la respuesta a la pregunta es negativa.
 * Las preguntas formuladas dentro de un programa son siempre
 * instrucciones lógicas o relacionales. Por ejemplo, si la
 * variable  'i' es igual a cero, entonces dibuja una línea.
 */
function setup() {
  createCanvas(720, 360);
  background(0);

  for (let i = 10; i < width; i += 10) {
    // Si 'i' divide a 20 sin resto, dibuja la primera línea
    // en caso contrario, dibuja la segunda línea
    if (i % 20 === 0) {
      stroke(255);
      line(i, 80, i, height / 2);
    } else {
      stroke(153);
      line(i, 20, i, 180);
    }
  }
}
