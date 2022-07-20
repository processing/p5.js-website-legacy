/*
 * @name Aleatorio
 * @description Los números aleatorios son la base de esta imagen.
 * Cada vez que el programa es ejecutado, el resultado es distinto.
 */
function setup() {
  createCanvas(710, 400);
  background(0);
  strokeWeight(20);
  frameRate(2);
}

function draw() {
  for (let i = 0; i < width; i++) {
    let r = random(255);
    stroke(r);
    line(i, 0, i, height);
  }
}
