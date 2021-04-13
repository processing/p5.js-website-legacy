/*
 * @name Breedte en Hoogte
 * @description De 'width' en de 'height' variabelen bevatten de breedte en de
 * hoogte van het venster waarin we iets afbeelden zoals ze werden bepaald in
 * de createCanvas() functie.
 */
function setup() {
  createCanvas(720, 400);
}

function draw() {
  background(127);
  noStroke();
  for (let i = 0; i < height; i += 20) {
    fill(129, 206, 15);
    rect(0, i, width, 10);
    fill(255);
    rect(i, 0, 10, height);
  }
}
