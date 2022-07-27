/*
 * @name Pulses
 * @arialabel Continuous black flowers with a white circle center draw on a dark grey background as you move your mouse. The circles get bigger as you move your mouse faster and smaller as you move your mouse slower. When you stop your mouse, the last flower rotates slightly.
 * @description Software drawing instruments can follow a rhythm or abide by
 * rules independent of drawn gestures. This is a form of collaborative drawing
 * in which the draftsperson controls some aspects of the image and the software
 * controls others.
 */
let angle = 0;

function setup() {
  createCanvas(710, 400);
  background(102);
  noStroke();
  fill(0, 102);
}

function draw() {
  // Draw only when mouse is pressed
  if (mouseIsPressed === true) {
    angle += 5;
    let val = cos(radians(angle)) * 12.0;
    for (let a = 0; a < 360; a += 75) {
      let xoff = cos(radians(a)) * val;
      let yoff = sin(radians(a)) * val;
      fill(0);
      ellipse(mouseX + xoff, mouseY + yoff, val, val);
    }
    fill(255);
    ellipse(mouseX, mouseY, 2, 2);
  }
}
