/*
 * @name Rotate
 * @description Rotar un cuadrado en torno al eje Z
 Si prefieres usar grados (0-360) para medir los ángulos, puede usas el
 * método radians() para convertir tus valores a radianes
 * For example: scale(radians(90)) is identical to the statement
 * scale(PI/2). In this example, every even numbered second a jitter
 * is added to the rotation. During odd seconds rotation moves CW and
 * CCW at the speed determined by the last jitter value.
 * Para obtener los resultados que esperas, usa ángulos de la función
 * rotate() (del inglés rotar) con valores entre 0 y PI*2 (TWO_PI que
 * es aproximadamente 6.28)
 *
 *
 *
 */

let angulo = 0.0;
let jitter = 0.0;

function setup() {
  createCanvas(720, 400);
  noStroke();
  fill(255);
  // Dibuja el rectánglo desde el centro y también hará que
  //la rotación sea en torno al centro
  rectMode(CENTER);
}

function draw() {
  background(51);

  // Durante los segundos pares (0, 2, 4, 6...), añade jitter a
  // la rotación
  if (second() % 2 === 0) {
    jitter = random(-0.1, 0.1);
  }
  //increase the angle value using the most recent jitter value
  angulo = angulo + jitter;
  // Usa coseno para obtener un movimiento suave a favor y en contra
  // de las manecillas del reloj cuando no esté  haciendo jittering
  let c = cos(angulo);
  // Mueve la figura al centro del lienzo
  translate(width / 2, height / 2);
  // Aplica la rotación final
  rotate(c);
  rect(0, 0, 180, 180);
}
