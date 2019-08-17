/*
 * @name Brazo
 * @description Este ejemplo usa matrices de transformación para crear
 * un brazo. El ángulo de cada segmento es controlado con la posición
 * de mouseX y mouseY. Las transformaciones aplicadas al primer segmento
 * son aplicadas al segundo segmento porque están dentro del mismo grupo
 * de matrices push() y pop()
 */

let x, y;
let angulo1 = 0.0;
let angulo2 = 0.0;
let largoSegmento = 100;

function setup() {
  createCanvas(720, 400);
  strokeWeight(30);

  // Trazo blanco semi-transparente
  stroke(255, 160);

  // Posición del "hombro" del brazo en el centro del lienzo
  x = width * 0.5;
  y = height * 0.5;
}

function draw() {
  background(0);

  //Modifica el ángulo de los segmentos según la posición del ratón
  angulo1 = (mouseX / float(width) - 0.5) * -TWO_PI;
  angulo2 = (mouseY / float(height) - 0.5) * PI;

  // Usa push y pop para "contener" las transformaciones. Nota que
  // aunque dibujamos los segmentos usando una función de fabricación propia,
  // las transformaciones igualmente se acumulan.
  push();
  segmento(x, y, angulo1);
  segmento(largoSegmento, 0, angulo2);
  pop();
}

// una función de fabricación propia para dibujar segmentos
function segmento(x, y, a) {
  translate(x, y);
  rotate(a);
  line(0, 0, largoSegmento, 0);
}
