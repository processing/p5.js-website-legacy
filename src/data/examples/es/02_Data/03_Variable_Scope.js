/*
 * @name Alcance de variabless
 * @description Las variables tienen un alcance global o local. Por ejemplo,
 * las variables declaradas dentro de las funciones setup() o draw() solamente pueden
 * ser usadas dentro de esas funciones. Las variables globales, esto es, variables declaradas fuera de setup() y
 * draw(), pueden ser usadas en cualquier parte del programa. Si una variable local
 * es declarada con el mismo nombre que una variable global, el programa usará
 * el valor local para hacer sus cálculos dentro de la función.
 * Las variables son localizadas dentro de cada bloque, el espacio entre llaves { y }.
 */
let a = 80; // Create a global variable "a"

function setup() {
  createCanvas(720, 400);
  background(0);
  stroke(255);
  noLoop();
}

function draw() {
  // Draw a line using the global variable "a"
  line(a, 0, a, height);

  // Use a local variable a in for loop
  for (let a = 120; a < 200; a += 3) {
    line(a, 0, a, height);
  }

  // Make a call to the custom function drawAnotherLine()
  drawAnotherLine();

  // Make a call to the custom function drawYetAnotherLine()
  drawYetAnotherLine();
}

function drawAnotherLine() {
  // Create a new variable "a" local to this function
  let a = 320;
  // Draw a line using the local variable "a"
  line(a, 0, a, height);
}

function drawYetAnotherLine() {
  // Because no new local variable "a" is set,
  // this line draws using the original global
  // variable "a" which is set to the value 20.
  line(a + 3, 0, a + 3, height);
}
