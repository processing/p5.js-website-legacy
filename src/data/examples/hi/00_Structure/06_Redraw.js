/*
  * @name रेड्रा
  * @description रेड्रा () फ़ंक्शन ड्रा () को एक बार निष्पादित करता है। इस उदाहरण में,
  * ड्रा () को हर बार माउस क्लिक करने पर एक बार निष्पादित किया जाता है।
  */

let y;

// The statements in the setup() function
// execute once when the program begins
function setup() {
  createCanvas(720, 400);
  stroke(255);
  noLoop();
  y = height * 0.5;
}

// The statements in draw() are executed until the
// program is stopped. Each statement is executed in
// sequence and after the last line is read, the first
// line is executed again.
function draw() {
  background(0);
  y = y - 4;
  if (y < 0) {
    y = height;
  }
  line(0, y, width, y);
}

function mousePressed() {
  redraw();
}
