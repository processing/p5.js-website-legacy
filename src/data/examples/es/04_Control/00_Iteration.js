/*
 * @name Iteración
 * @description Iteración con una estructura "for" para construir figuras repetitivas.
 */
let y;
let num = 14;

function setup() {
  createCanvas(720, 360);
  background(102);
  noStroke();

  // Dibujar barras blancas
  fill(255);
  y = 60;
  for (let i = 0; i < num / 3; i++) {
    rect(50, y, 475, 10);
    y += 20;
  }

  // Barras grises
  fill(51);
  y = 40;
  for (let i = 0; i < num; i++) {
    rect(405, y, 30, 10);
    y += 20;
  }
  y = 50;
  for (let i = 0; i < num; i++) {
    rect(425, y, 30, 10);
    y += 20;
  }

  // Líneas delgadas
  y = 45;
  fill(0);
  for (let i = 0; i < num - 1; i++) {
    rect(120, y, 40, 1);
    y += 20;
  }
}
