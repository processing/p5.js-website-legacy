/*
 * @name Coördinaten
 * @description Alle vormen die op het scherm zijn getekend hebben een positie
 * die als coördinaat wordt omschreven. Alle coördinaten worden gemeten als de
 * afstand van de oorsprong en in de eenheid pixels. De oorsprong [0, 0] is de
 * coördinaat in de linker bovenhoek van het venster en de coördinaat in de
 * rechter onderhoek is [width-1, height-1].
 */
function setup() {
  // Maakt het canvas 720 pixels breed en 400 pixels hoog.
  createCanvas(720, 400);
}

function draw() {
  // Maakt de achtergrond zwart en zet de vul kleur uit
  background(0);
  noFill();

  // De twee parameters van de point() methode zijn coördinaten.
  // De eerste parameter is de x-coördinaat en de tweede is de y
  stroke(255);
  point(width * 0.5, height * 0.5);
  point(width * 0.5, height * 0.25);

  // Coördinaten worden gebruikt om alle vormen te tekenen, niet alleen punten.
  // Parameters voor verschillende functies worden gebruikt voor verschillende
  // doeleinden. Bijvoorbeeld: de eerste twee parameters in line() specificeren
  // de coördinaten voor het eerste uiterste en de tweede voor het andere
  // uiterste.
  stroke(0, 153, 255);
  line(0, height * 0.33, width, height * 0.33);

  // De eerste twee parameters in rect() zijn de coördinaten van de linker
  // bovenhoek en de derde en vierde parameter is voor de breedte en de hoogte.
  stroke(255, 153, 0);
  rect(width * 0.25, height * 0.1, width * 0.5, height * 0.8);
}
