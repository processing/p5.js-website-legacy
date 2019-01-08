/*
 * @name Líneas continuas
 * @description Haga clic y arrastre el mouse para dibujar una línea.
 */
function setup() {
  createCanvas(710, 400);
  background(102);
}

function draw() {
  stroke(255);
  if (mouseIsPressed === true) {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}
