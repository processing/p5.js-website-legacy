/*
 * @name Saturación
 * @description La saturación es la fuerza o pureza del color y
 * representa la cantidad de gris en proporción al tinte.
 * Un color "saturado" es puro y uno "insaturado" tiene un gran porcentaje de gris.
* Mueve el cursor verticalmente sobre cada barra para alterar su saturación.
 */
var barWidth = 20;
var lastBar = -1;

function setup() {
  createCanvas(720, 400);
  colorMode(HSB, width, height, 100);
  noStroke();
}

function draw() {
  var whichBar = mouseX / barWidth;
  if (whichBar != lastBar) {
    var barX = whichBar * barWidth;
    fill(barX, mouseY, 66);
    rect(barX, 0, barWidth, height);
    lastBar = whichBar;
  }
}
