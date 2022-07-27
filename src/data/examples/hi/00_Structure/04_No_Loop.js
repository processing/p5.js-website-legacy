/*
   * @name नो लूप
   * @arialabel काली पृष्ठभूमि के बीच में क्षैतिज सफेद रेखा
   * @description noLoop() फ़ंक्शन draw() फ़ंक्शन को केवल एक बार निष्पादित करने का कारण बनता है।.
   * noLoop() को कॉल किए बिना, draw() के अंदर का कोड लगातार चलाया जाता है।
   */
let y;

// The statements in the setup() function
// execute once when the program begins
function setup() {
  // createCanvas should be the first statement
  createCanvas(720, 400);
  stroke(255); // Set line drawing color to white
  noLoop();

  y = height * 0.5;
}

// The statements in draw() are executed until the
// program is stopped. Each statement is executed in
// sequence and after the last line is read, the first
// line is executed again.
function draw() {
  background(0); // Set the background to black
  y = y - 1;
  if (y < 0) {
    y = height;
  }
  line(0, y, width, y);
}
