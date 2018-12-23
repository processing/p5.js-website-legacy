/*
 * @name Translate
 * @description La función translate() (del inglés trasladar) permite que
 * los objetos sean movidos a cualquier ubicación dentro de la
 * ventana. El primer parámetro define la cantidad en el eje x
 * y el segundo paráemtro en el eye y. Este ejemplo muestra cómo las
 * transformadas se acumulan.
 */

let x = 0;
let y = 0;
let dim = 80.0;

function setup() {
  createCanvas(720, 400);
  noStroke();
}

function draw() {
  background(102);
  // Animar al incrementar nuestor valor x
  x = x + 0.8;
  // Si la figura se sale del lienzo, reinicia la posición
  if (x > width + dim) {
    x = -dim;
  }

  // Aunque nuestro comando rect() dibuja la figura con su centro
  // en el origen, translate() lo mueve a una nueva posición x,y
  translate(x, height / 2 - dim / 2);
  fill(255);
  rect(-dim / 2, -dim / 2, dim, dim);

  // Las transformaciones se acumulan. Observa cómo este rect se mueve
  // al doble de velocidad que el otro, a pesar de que tiene el mismo
  // parámetro para el valor de x.
  translate(x, dim);
  fill(0);
  rect(-dim / 2, -dim / 2, dim, dim);
}
