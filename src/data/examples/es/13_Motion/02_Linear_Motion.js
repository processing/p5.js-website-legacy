/*
 * @name Lineal
 * @frame 720,400
 * @description Cambiar una variable para crear una línea en movimiento.
 * Cuando la línea se mueve fuera del borde de la ventana,
 * la variable se pone a 0, lo que coloca la línea de nuevo en la parte inferior de la pantalla.
 */

let a;

function setup() {
  createCanvas(720, 400);
  stroke(255);
  a = height / 2;
}

function draw() {
  background(51);
  line(0, a, width, a);
  a = a - 0.5;
  if (a < 0) {
    a = height;
  }
}
