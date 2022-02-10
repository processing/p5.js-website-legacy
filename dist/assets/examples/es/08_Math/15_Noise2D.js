/*
 * @name Ruido 2D
 * @frame 710,400 (optional)
 * @description Crear un ruido 2D con parámetros diferentes.
 *
 */

let noiseVal;
let noiseScale = 0.02;

function setup() {
  createCanvas(640, 360);
}

function draw() {
  background(0);
  // Dibujar la mitad izquierda de la imagen
  for (let y = 0; y < height - 30; y++) {
    for (let x = 0; x < width / 2; x++) {
      // noiceDetail (detalle del ruido) del número de octavas  y valor de caída de los píxeles
      noiseDetail(2, 0.2);
      noiseVal = noise((mouseX + x) * noiseScale, (mouseY + y) * noiseScale);
      stroke(noiseVal * 255);
      point(x, y);
    }
  }
  // Dibujar la mitad derecha de la imagen
  for (let y = 0; y < height - 30; y++) {
    for (let x = width / 2; x < width; x++) {
      // noiceDetail (detalle del ruido) del número de octavas  y valor de caída de los píxeles
      noiseDetail(5, 0.5);
      noiseVal = noise((mouseX + x) * noiseScale, (mouseY + y) * noiseScale);
      stroke(noiseVal * 255);
      point(x, y);
    }
  }
  //Mostrar los detalles de las dos particiones
  textSize(18);
  fill(255, 255, 255);
  text('Noice2D with 2 octaves and 0.2 falloff', 10, 350);
  text('Noice2D with 1 octaves and 0.7 falloff', 330, 350);
}
