/*
 * @name Rotate
 * @description Rotar un cuadrado en torno al eje Z
 * Para obtener los resultados que esperas, usa ángulos de la función
 * rotate() (del inglés rotar) con valores entre 0 y PI*2 (TWO_PI que
 * es aproximadamente 6.28)
 * Si prefieres usar grados (0-360) para medir los ángulos, puede usar el
 * método radians() para convertir tus valores a radianes
 * Por ejemplo: rotate(radians(90)) es idéntico a la sentencia
 * rotate(PI/2). En este ejemplo, cada segundo numerado un jitter
 * es añadido a la rotación. Durante los segundos impares la rotación se mueve CW y
 * CCW a la velocidad determinada por el ultimo valor de jitter.
 */

let angle = 0.0;
let jitter = 0.0;

function setup() {
  createCanvas(720, 400);
  noStroke();
  fill(255);
  // Dibuja el rectángulo desde el centro y también hará que
  // la rotación sea en torno al centro
  rectMode(CENTER);
}

function draw() {
  background(51);

  // Durante los segundos pares (0, 2, 4, 6...), añade jitter a
  // la rotación
  if (second() % 2 === 0) {
    jitter = random(-0.1, 0.1);
  }
  //incrementa el valor del ángulo usando el valor más reciente de jitter
  angle = angle + jitter;
  // Usa coseno para obtener un movimiento suave a favor y en contra
  // de las manecillas del reloj cuando no esté  haciendo jittering
  let c = cos(angle);
  // Mueve la figura al centro del lienzo
  translate(width / 2, height / 2);
  // Aplica la rotación final
  rotate(c);
  rect(0, 0, 180, 180);
}
