/*
 * @name Barra deslizante
 * @description Mueve las barras deslizantes para controlar los valores de color RGB del fondo.
 */
let rSlider, gSlider, bSlider;

function setup() {
  // crear lienzo
  createCanvas(710, 400);
  textSize(15);
  noStroke();

  // crear barras deslizantes
  rSlider = createSlider(0, 255, 100);
  rSlider.position(20, 20);
  gSlider = createSlider(0, 255, 0);
  gSlider.position(20, 50);
  bSlider = createSlider(0, 255, 255);
  bSlider.position(20, 80);
}

function draw() {
  const r = rSlider.value();
  const g = gSlider.value();
  const b = bSlider.value();
  background(r, g, b);
  text("red", 165, 35);
  text("green", 165, 65);
  text("blue", 165, 95);
}
