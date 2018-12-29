/*
 * @name Incremento y decremento
 * @description Escribir "a++" es equivalente a"a = a + 1".
 * Escribir "a--" es equivalente a "a = a - 1".
 */
let a;
let b;
let direction;

function setup() {
  createCanvas(710, 400);
  colorMode(RGB, width);
  a = 0;
  b = width;
  direction = true;
  frameRate(30);
}

function draw() {
  a++;
  if (a > width) {
    a = 0;
    direction = !direction;
  }
  if (direction === true) {
    stroke(a);
  } else {
    stroke(width - a);
  }
  line(a, 0, a, height / 2);

  b--;
  if (b < 0) {
    b = width;
  }
  if (direction === true) {
    stroke(width - b);
  } else {
    stroke(b);
  }
  line(b, height / 2 + 1, b, height);
}
