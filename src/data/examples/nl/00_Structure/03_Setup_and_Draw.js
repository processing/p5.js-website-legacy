/*
 * @name Setup en Draw
 * @description De code in de draw() functie zal continu uitgevoerd worden van
 * boven naar beneden tot het programma gestopt wordt.
 */
let y = 100;

// De code in de setup() functie worden één keer uitgevoerd wanneer het
// programma begint.
function setup() {
  // createCanvas moet eerst komen
  createCanvas(720, 400);
  stroke(255); // Maak de lijn kleur wit
  frameRate(30);
}
// De code in de draw() functie wordt continu uitgevoerd tot het programma
// gestopt wordt.  Elke lijn wordt na de vorige uitgevoerd, en na de laatste
// komt de eerste weer.

function draw() {
  background(0); // Maak de achtergrond zwart
  y = y - 1;
  if (y < 0) {
    y = height;
  }
  line(0, y, width, y);
}
