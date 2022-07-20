/*
 * @name Ruido 3D
 * @frame 710,400 (optional)
 * @description Uso de ruido 3D para crear una simple textura animada.
 */
let noiseVal;
//Incrementar x en 0,01
let x_increment = 0.01;
//Incrementar z en 0.02 cada ciclo de draw()
let z_increment = 0.02;

//Valores de desviación
let z_off, y_off, x_off;

function setup() {
  //Crear el Lienzo
  createCanvas(640, 360);
  //Definir la velocidad de cuadro
  frameRate(20);
  //Valor inicial de z_off
  z_off = 0;
}

function draw() {
  x_off = 0;
  y_off = 0;
  //Hacer que el fondo sea negro
  background(0);
  //Ajustar el detalle del ruido
  noiseDetail(8, 0.65);

  //Para cada x,y calcular el valor del ruido
  for (let y = 0; y < height; y++) {
    x_off += x_increment;
    y_off = 0;

    for (let x = 0; x < width; x++) {
      //Calcular y dibujar cada píxel
      noiseVal = noise(x_off, y_off, z_off);
      stroke(noiseVal * 255);
      y_off += x_increment;
      point(x, y);
    }
  }

  z_off += z_increment;
}
