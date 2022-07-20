/*
 * @name Create Graphics
 * @arialabel Black background with a very dark grey rectangle in the middle. The user’s mouse draws in white but not on the center rectangle.
 * @description Creates and returns a new p5.Renderer object. Use this
 * class if you need to draw into an off-screen graphics buffer. The two parameters
 * define the width and height in pixels.
 */

let pg;

function setup() {
  createCanvas(710, 400);
  pg = createGraphics(400, 250);
}

function draw() {
  fill(0, 12);
  rect(0, 0, width, height);
  fill(255);
  noStroke();
  ellipse(mouseX, mouseY, 60, 60);

  pg.background(51);
  pg.noFill();
  pg.stroke(255);
  pg.ellipse(mouseX - 150, mouseY - 75, 60, 60);

  //Draw the offscreen buffer to the screen with image()
  image(pg, 150, 75);
}
