/*
 * @name Rotate
 * @arialabel White square on a dark grey background rotates side to side 
 * @description Rotating a square around the Z axis.
 * To get the results you expect, send the rotate function angle
 * parameters that are values between 0 and PI*2 (TWO_PI which is
 * roughly 6.28). If you prefer to think about angles as degrees
 * (0-360), you can use the radians() method to convert your values.
 * For example: rotate(radians(90)) is identical to the statement
 * rotate(PI/2). In this example, every even numbered second a jitter
 * is added to the rotation. During odd seconds, rotation moves CW and
 * CCW at the speed determined by the last jitter value.
 */

let angle = 0.0;
let jitter = 0.0;

function setup() {
  createCanvas(720, 400);
  noStroke();
  fill(255);
  //Draw the rectangle from the center and it will also be the
  //rotate around that center
  rectMode(CENTER);
}

function draw() {
  background(51);

  // during even-numbered seconds (0, 2, 4, 6...) add jitter to
  // the rotation
  if (second() % 2 === 0) {
    jitter = random(-0.1, 0.1);
  }
  //increase the angle value using the most recent jitter value
  angle = angle + jitter;
  //use cosine to get a smooth CW and CCW motion when not jittering
  let c = cos(angle);
  //move the shape to the center of the canvas
  translate(width / 2, height / 2);
  //apply the final rotation
  rotate(c);
  rect(0, 0, 180, 180);
}
