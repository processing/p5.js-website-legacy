/*
 * @name Map
 * @arialabel Red circle grows larger and turns more yellow as the user’s mouse moves right on the screen and does the opposite as the user’s mouse moves left
 * @description Use the map() function to take any number and scale it to a
 * new number that is more useful for the project that you are working on.
 * For example, use the numbers from the mouse position to control the size or color of a shape.
 * In this example, the mouse’s x-coordinate (numbers between 0 and 360) are scaled to new numbers
 * to define the color and size of a circle.
 */
function setup() {
  createCanvas(720, 400);
  noStroke();
}

function draw() {
  background(0);
  // Scale the mouseX value from 0 to 720 to a range between 0 and 175
  let c = map(mouseX, 0, width, 0, 175);
  // Scale the mouseX value from 0 to 720 to a range between 40 and 300
  let d = map(mouseX, 0, width, 40, 300);
  fill(255, c, 0);
  ellipse(width/2, height/2, d, d);
}
