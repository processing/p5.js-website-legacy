/*
 * @name Variables de color
 * @description (Homenajen a Albers.) Este ejemplo crea variables de colores
 * que pueden ser referenciadas en el programa por un nombre, en vez de un número.
 */
function setup() {
  createCanvas(710, 400);
  noStroke();
  background(51, 0, 0);

  var inside = color(204, 102, 0);
  var middle = color(204, 153, 0);
  var outside = color(153, 51, 0);

  // Estas instrucciones son equivalentes a las de arriba.
  // Los programadores pueden usar el formato que prefieran.
  //color inside = #CC6600;
  //color middle = #CC9900;
  //color outside = #993300;

  push();
  translate(80, 80);
  fill(outside);
  rect(0, 0, 200, 200);
  fill(middle);
  rect(40, 60, 120, 120);
  fill(inside);
  rect(60, 90, 80, 80);
  pop();

  push();
  translate(360, 80);
  fill(inside);
  rect(0, 0, 200, 200);
  fill(outside);
  rect(40, 60, 120, 120);
  fill(middle);
  rect(60, 90, 80, 80);
  pop();
}
