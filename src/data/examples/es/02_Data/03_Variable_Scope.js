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
let a = 80; // Crea una variable global "a"

function setup() {
  createCanvas(720, 400);
  background(0);
  stroke(255);
  noLoop();
}

function draw() {
  // Dibuja una línea usando la variable global "a"
  line(a, 0, a, height);

  // Crea una nueva variable local "a" al for()
  for (let a = 120; a < 200; a += 3) {
    line(a, 0, a, height);
  }

  // Llamada a la función drawAnotherLine()
  drawAnotherLine();

  // Llamada a la función drawYetAnotherLine()
  drawYetAnotherLine();
}

function drawAnotherLine() {
  // Crea una nueva variable local "a" de este método
  let a = 320;
  // Dibuja una línea usando la variable local "a"
  line(a, 0, a, height);
}

function drawYetAnotherLine() {
  // Como no definimos una nueva variable local "a",
  // esta línea se dibuja usando la variable global original
  // "a" que tiene un valor de 20.
  line(a + 3, 0, a + 3, height);
}
