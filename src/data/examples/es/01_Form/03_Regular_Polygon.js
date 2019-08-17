/*
 * @name Polígono regular
 * @description ¿Cuál es tu favorito? ¿Pentágono? ¿Hexágono? ¿Heptágono? ¿No?
 * ¿O el icoságono? La función polygon() creada para este ejemplo es
 * capaz de dibujar cualquier polígono regular. Trata con distintos números en los paráemtros de
 * la función polygon() dentro de draw() para explorar.
 */
function setup() {
  createCanvas(720, 400);
}

function draw() {
  background(102);

  push();
  translate(width * 0.2, height * 0.5);
  rotate(frameCount / 200.0);
  polygon(0, 0, 82, 3);
  pop();

  push();
  translate(width * 0.5, height * 0.5);
  rotate(frameCount / 50.0);
  polygon(0, 0, 80, 20);
  pop();

  push();
  translate(width * 0.8, height * 0.5);
  rotate(frameCount / -100.0);
  polygon(0, 0, 70, 7);
  pop();
}

function polygon(x, y, radius, npoints) {
  let angle = TWO_PI / npoints;
  beginShape();
  for (let a = 0; a < TWO_PI; a += angle) {
    let sx = x + cos(a) * radius;
    let sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
