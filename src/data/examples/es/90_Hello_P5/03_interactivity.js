/*
 * @name Interactividad 2
 * @frame 720,425
 * @description El círculo cambia de color cuando mueves la barra deslizante.
 */

// Una barra deslizante de rango HTML
let slider;

function setup() {
  createCanvas(720, 400);
  // Tinte, saturación, brillo
  colorMode(HSB, 255);
  // La barra deslizante tiene un valor entre 0 y 255 con un valor inicial de 127
  slider = createSlider(0, 255, 127);
}

function draw() {
  background(127);
  strokeWeight(2);

  // Definir el tinte según la barra deslizante
  stroke(slider.value(), 255, 255);
  fill(slider.value(), 255, 255, 127);
  ellipse(360, 200, 200, 200);
}
