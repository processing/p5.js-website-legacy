/*
 * @name Tinte
 * @description El tinte es el color reflejado o transmitidio
 *  a través de un objecto y es típicamente nombrado como
 * el nombre del color (rojo, azul, amarillo, etc).
 * Mueve el cursor verticalmente sobre cada barra para alterar su tinte.
 */
var barWidth = 20;
var lastBar = -1;

function setup() {
  createCanvas(720, 400);
  colorMode(HSB, height, height, height);
  noStroke();
  background(0);
}

function draw() {
  var whichBar = mouseX / barWidth;
  if (whichBar !== lastBar) {
    var barX = whichBar * barWidth;
    fill(mouseY, height, height);
    rect(barX, 0, barWidth, height);
    lastBar = whichBar;
  }
}
