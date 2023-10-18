/*
 * @name Brazo
 * @description Este ejemplo usa matrices de transformación para crear
 * un brazo. El ángulo de cada segmento es controlado con la posición
 * de mouseX y mouseY. Las transformaciones aplicadas al primer segmento
 * son aplicadas al segundo segmento porque están dentro del mismo grupo
 * de matrices push() y pop()
 */

let x, y;
let angle1 = 0.0;
let angle2 = 0.0;
let segLength = 100;

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
  angle1 = (mouseX / float(width) - 0.5) * -TWO_PI;
  angle2 = (mouseY / float(height) - 0.5) * PI;

  // Usa push y pop para "contener" las transformaciones. Nota que
  // aunque dibujamos los segmentos usando una función de fabricación propia,
  // las transformaciones igualmente se acumulan.
  push();
  segment(x, y, angle1);
  segment(segLength, 0, angle2);
  pop();
}

// Una función personalizada para dibujar segmentos
function segment(x, y, a) {
  translate(x, y);
  rotate(a);
  line(0, 0, segLength, 0);
}
