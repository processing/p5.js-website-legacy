/*
 * @name Noise1D
 * @arialabel White circle travels side to side based on perlin noise 
 * @description Using 1D Perlin Noise to assign location.
 */
let xoff = 0.0;
let xincrement = 0.01;

function setup() {
  createCanvas(710, 400);
  background(0);
  noStroke();
}

function draw() {
  // Create an alpha blended background
  fill(0, 10);
  rect(0, 0, width, height);

  //let n = random(0,width);  // Try this line instead of noise

  // Get a noise value based on xoff and scale
  // it according to the window's width
  let n = noise(xoff) * width;

  // With each cycle, increment xoff
  xoff += xincrement;

  // Draw the ellipse at the value produced by perlin noise
  fill(200);
  ellipse(n, height / 2, 64, 64);
}
