/*
 * @name True y False
 * @description Una variable de tipo Boolean tiene solo dos valores posibles: true (verdadero) o false (falso).
 * Es común usar booleanos con instrucciones de control para determinar el flujo
 * de un programa. En este ejemplo, cuando el valor booleano "x" es verdadero, se dibujan
 * líneas negras verticales y cuando el valor booleano "x" es falso, se dibujan líneas grises horizontales.
 */
function setup() {
  createCanvas(720, 400);
  background(0);
  stroke(255);

  let b = false;
  let d = 20;
  let middle = width / 2;

  for (let i = d; i <= width; i += d) {
    b = i < middle;

    if (b === true) {
      // Línea vertical
      line(i, d, i, height - d);
    }

    if (b === false) {
      // Línea horizontal
      line(middle, i - middle + d, width - d, i - middle + d);
    }
  }
}
