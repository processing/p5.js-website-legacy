/*
 * @name Escalar
 * @description Los parámetros de la función scale() (del inglés escalar)
 * son valores especificados como porcentajes decimales. Por ejemplo,
 * ejecutar scale(2.0) aumentará la dimensión de la digura en un
 * 200 por ciento. Los objetos siempre se escalan desde el origen.
 * Este ejemplo muestra cómo las transformaciones se acumulan y
 * también cómo scale() y translate() interactúan dependiendo de su
 * orden.
 */

let a = 0.0;
let s = 0.0;

function setup() {
  createCanvas(720, 400);
  noStroke();
  // Dibuja todos los rectángulos desde su centro, en vez de
  // la esquina superior izquierda, que es la forma por defecto.
  rectMode(CENTER);
}

function draw() {
  background(102);

  // Lentamente aumenta 'a' y luego anima 's' con un movimiento
  // cíclico suave mediante el cálculo de coseno de 'a'
  a = a + 0.04;
  s = cos(a) * 2;

  // Traslada nuestro rectángulo desde el origen hacia el centro
  // del lienzo, luego escálalo con 's'
  translate(width / 2, height / 2);
  scale(s);
  fill(51);
  rect(0, 0, 50, 50);

  // Traslación y escalamiento son acumulativos, por lo que esta
  // esta traslación mueve el segundo rectángulo más a la derecha del
  // primero y el escalamiento es doblado. Observa que el coseno
  // está haciendo que 's' sea tanto positivo como negativo,
  // por lo que oscila entre izquierda y derecha.
  translate(75, 0);
  fill(255);
  scale(s);
  rect(0, 0, 50, 50);
}
