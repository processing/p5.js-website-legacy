/*
 * @name Interactividad 1
 * @frame 720,425
 * @description El círculo cambia de color cuando ahces click en él.
 * <p><em><span class="small"> Para correr este ejemplo de manera local, necesitarás la
 * <a href="http://p5js.org/reference/#/libraries/p5.dom"> biblioteca p5.dom</a>.
 * </em></p>
 */

// variables para los valores de rojo, verde y azul (r, g, b)
var r, g, b;

function setup() {
  createCanvas(720, 400);
  // colores aleatorios
  r = random(255);
  g = random(255);
  b = random(255);
}

function draw() {
  background(127);
  // dibujar el círculo
  strokeWeight(2);
  stroke(r, g, b);
  fill(r, g, b, 127);
  ellipse(360, 200, 200, 200);
}

// cuando el usuario hace click
function mousePressed() {
  // revisar si el ratón está dentro del círculo
  var d = dist(mouseX, mouseY, 360, 200);
  if (d < 100) {
    // escoger nuevos colores aleatorios
    r = random(255);
    g = random(255);
    b = random(255);
  }
}
