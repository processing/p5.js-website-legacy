/*
 * @name Arm
 * @arialabel Two ovals connected at the end to form an arm shape. One end is fixed at the center of the black background. The arm shape moves in a circular motion as the mouse moves around the screen 
 * @description This example uses transform matrices to create
 * an arm. The angle of each segment is controlled with the
 * mouseX and mouseY position. The transformations applied to
 * the first segment are also applied to the second segment
 * because they are inside the same push() and
 * pop() matrix group.
 */

let x, y;
let angle1 = 0.0;
let angle2 = 0.0;
let segLength = 100;

function setup() {
  createCanvas(720, 400);
  strokeWeight(30);

  //Stroke with a semi-transparent white
  stroke(255, 160);

  //Position the "shoulder" of the arm in the center of the canvas
  x = width * 0.5;
  y = height * 0.5;
}

function draw() {
  background(0);

  //Change the angle of the segments according to the mouse positions
  angle1 = (mouseX / float(width) - 0.5) * -TWO_PI;
  angle2 = (mouseY / float(height) - 0.5) * PI;

  //use push and pop to "contain" the transforms. Note that
  // even though we draw the segments using a custom function,
  // the transforms still accumulate
  push();
  segment(x, y, angle1);
  segment(segLength, 0, angle2);
  pop();
}

//a custom function for drawing segments
function segment(x, y, a) {
  translate(x, y);
  rotate(a);
  line(0, 0, segLength, 0);
}
