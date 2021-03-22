/*
 * @name Milliseconds
 * @description A millisecond is 1/1000 of a second. Processing keeps track of the number of milliseconds a 
 * program has run. By modifying this number with the modulo(%) operator, different patterns in time are created. (ported from https://processing.org/examples/milliseconds.html)
 */

let scale;

function setup() {
  createCanvas(720, 400);
  noStroke();
  scale = width/20;
}

function draw() { 
  let i;
  for ( i = 0; i < scale; i++) {
    colorMode(RGB, (i+1) * scale * 10);
    fill(millis()%((i+1) * scale * 10));
    rect(i*scale, 0, scale, height);
  }
}