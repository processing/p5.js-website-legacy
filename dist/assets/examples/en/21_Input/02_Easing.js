/*
 * @name Easing
 * @arialabel Pink background with a white circle that the user can move around by hovering over the circle
 * @description Move the mouse across the screen and the symbol
 * will follow. Between drawing each frame of the animation, the
 * program calculates the difference between the position of the
 * symbol and the cursor. If the distance is larger than 1 pixel,
 * the symbol moves part of the distance (0.05) from its current
 * position toward the cursor.
 */
let x = 1;
let y = 1;
let easing = 0.05;

function setup() {
  createCanvas(720, 400);
  noStroke();
}

function draw() {
  background(237, 34, 93);
  let targetX = mouseX;
  let dx = targetX - x;
  x += dx * easing;

  let targetY = mouseY;
  let dy = targetY - y;
  y += dy * easing;

  ellipse(x, y, 66, 66);
}
