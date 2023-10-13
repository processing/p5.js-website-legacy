/*
 * @name Patterns
 * @arialabel Continuous circles draw on a dark grey background as you move your mouse. The circles get bigger as you move your mouse faster and smaller as you move your mouse slower
 * @description Move the cursor over the image to draw with a software tool
 * which responds to the speed of the mouse.
 */
function setup() {
  createCanvas(710, 400);
  background(102);
}

function draw() {
  // Call the variableEllipse() method and send it the
  // parameters for the current mouse position
  // and the previous mouse position
  variableEllipse(mouseX, mouseY, pmouseX, pmouseY);
}

// The simple method variableEllipse() was created specifically
// for this program. It calculates the speed of the mouse
// and draws a small ellipse if the mouse is moving slowly
// and draws a large ellipse if the mouse is moving quickly

function variableEllipse(x, y, px, py) {
  let speed = abs(x - px) + abs(y - py);
  stroke(speed);
  ellipse(x, y, speed, speed);
}
