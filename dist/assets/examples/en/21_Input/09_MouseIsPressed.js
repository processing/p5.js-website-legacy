/*
 * @name Mouse Press
 * @arialabel User draws pink crosses on a grey background and can change the cross color to white by clicking the mouse. 
 * @description Move the mouse to position the shape.
 * Press the mouse button to invert the color.
 */
function setup() {
  createCanvas(720, 400);
  background(230);
  strokeWeight(2);
}

function draw() {
  if (mouseIsPressed) {
    stroke(255);
  } else {
    stroke(237, 34, 93);
  }
  line(mouseX - 66, mouseY, mouseX + 66, mouseY);
  line(mouseX, mouseY - 66, mouseX, mouseY + 66);
}
