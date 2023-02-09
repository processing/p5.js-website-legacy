/*
 * @name Primitivas 3D
 * @arialabel Fondo gris con un cubo gris oscuro en la esquiza inferior izquierda y una esfera delineada en blanco en la esquina inferior derecha 
 * @frame 720,400 (optional)
 * @description Ubicando matemáticamente objetos 3D en un espacio sintético.
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
