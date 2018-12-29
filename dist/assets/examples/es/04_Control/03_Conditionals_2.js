/*
 * @name Condicionales 2
 * @description Extendemos el lenguaje de los condicionales
 * del ejemplo anterior añadiendo la palabra clave "else".
 * Esto permite construir condicionales que preguntan
 * dos o más preguntas en secuencia, cada una con una acción
 * asociada.
 */
function setup() {
  createCanvas(720, 360);
  background(0);

  for (let i = 2; i < width - 2; i += 4) {
    // Si 'i' divide a 20 sin resto
    if (i % 20 === 0) {
      stroke(255);
      line(i, 80, i, height / 2);
      // Si 'i' divide a 10 sin resto
    } else if (i % 10 === 0) {
      stroke(153);
      line(i, 20, i, 180);
      // Si ninguna de las condiciones anteriores es cierta,
      // entonces dibuja esta línea
    } else {
      stroke(102);
      line(i, height / 2, i, height - 20);
    }
  }
}
