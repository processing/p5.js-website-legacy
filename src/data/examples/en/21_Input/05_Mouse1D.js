/*
 * @name Mouse 1D
 * @arialabel Two fuschia squares on a grey background. As the user’s mouse moves to the left of the window, the fuschia square on the left increases to fill up the left half of the window as the right square disappears and vice versa as the user’s mouse moves right.
 * @description Move the mouse left and right to
 * shift the balance. The "mouseX" variable is used
 * to control both the size and color of the rectangles.
 */
function setup() {
  createCanvas(720, 400);
  noStroke();
  rectMode(CENTER);
}

function draw() {
  background(230);

  let r1 = map(mouseX, 0, width, 0, height);
  let r2 = height - r1;

  fill(237, 34, 93, r1);
  rect(width / 2 + r1 / 2, height / 2, r1, r1);

  fill(237, 34, 93, r2);
  rect(width / 2 - r2 / 2, height / 2, r2, r2);
}
