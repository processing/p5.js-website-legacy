/*
 * @name Milliseconds
 * @arialabel Background broken down in bars of various shades of grey. The fill of some of the bars randomly changes every millisecond to other shades of grey.
 * @description A millisecond is 1/1000 of a second. Processing keeps track of the number of milliseconds a
 * program has run. By modifying this number with the modulo(%) operator, different patterns in time are created.
 * <br><br><small><em>This example is ported from the <a href="https://processing.org/examples/milliseconds.html">Milliseconds example</a>
 * on the Processing website</em></small>
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