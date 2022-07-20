/*
 * @name createGraphics
 * @description Crea y retorna un nuevo objeto p5.Renderer. Usa esta
 * clase si necesitas dibujar en un buffer gráfico fuera-de-pantalla. Los dos parámetros
 * definen el ancho y la altura en pixeles.
 */

let pg;

function setup() {
  createCanvas(710, 400);
  pg = createGraphics(400, 250);
}

function draw() {
  fill(0, 12);
  rect(0, 0, width, height);
  fill(255);
  noStroke();
  ellipse(mouseX, mouseY, 60, 60);

  pg.background(51);
  pg.noFill();
  pg.stroke(255);
  pg.ellipse(mouseX - 150, mouseY - 75, 60, 60);

  //El buffer fuera de pantalla es dibujado en la pantalla con image()
  image(pg, 150, 75);
}
