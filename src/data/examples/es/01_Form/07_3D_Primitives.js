/*
 * @name Primitivas 3D
 * @frame 720,400 (optional)
 * @description Ubicar matemáticamente objetos 3D en un espacio sintétito.
 * Las funciones box() y sphere() toman al menos un parámetro para especificar su
 * tamaño. Estas figuras son posicionadas usando la función translate().
 */
function setup() {
  createCanvas(710, 400, WEBGL);
}

function draw() {
  background(100);

  noStroke();
  fill(50);
  push();
  translate(-275, 175);
  rotateY(1.25);
  rotateX(-0.9);
  box(100);
  pop();

  noFill();
  stroke(255);
  push();
  translate(500, height * 0.35, -200);
  sphere(300);
  pop();
}
