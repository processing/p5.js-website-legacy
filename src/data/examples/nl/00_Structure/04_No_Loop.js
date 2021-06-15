/*
 * @name No Loop
 * @description De noLoop() functie zorgt ervoor dat draw() maar één keer uitgevoerd wordt.
 * Als noLoop() niet gebruikt wordt, zal de code in draw() de hele tijd uitgevoerd worden.
 */
let y;

// De statements in de setup() functie
// worden één keer uitgevoerd wanneer het programma begint
function setup() {
  // createCanvas zou het eerste statement moeten zijn
  createCanvas(720, 400);
  stroke(255); // Maak de lijn kleur wit
  noLoop();

  y = height * 0.5;
}

// De statements in draw() worden uitgevoerd tot het programma stopt.
// Elk statement is uitgevoerd in volgorde, en na de laatste lijn wordt
// de eerste weer uitgevoerd.
function draw() {
  background(0); // Maak de achtergrond zwart
  y = y - 1;
  if (y < 0) {
    y = height;
  }
  line(0, y, width, y);
}
