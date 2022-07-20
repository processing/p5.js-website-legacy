/*
 * @name Números
 * @frame 720,400
 * @description Los números pueden ser escritos con o sin decimales. Un número * entero (más comúnmente conocido como int por el inglés integer) es un
 * número sin fracción decimal. Un número de punto flotante (conocido como float
 * por el inglés floating-point number) es un número con fracción decimal.
 */
let a = 0; // Crea una variable global "a" de tipo Number
let b = 0; // Crea una variable global "b" de tipo Number

function setup() {
  createCanvas(720, 400);
  stroke(255);
}

function draw() {
  background(0);

  a = a + 1; // Incrementar a con un int
  b = b + 0.2; //Incrementar b con un float
  line(a, 0, a, height / 2);
  line(b, height / 2, b, height);

  if (a > width) {
    a = 0;
  }
  if (b > width) {
    b = 0;
  }
}
