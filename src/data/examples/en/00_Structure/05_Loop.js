/*
 * @name Loop
 * @arialabel Horizontal white line on a black background that moves from the bottom to the top of the screen parallel to the x-axis
 * @description If noLoop() is run in setup(), the code in draw() 
 * is only run once. In this example, click the mouse 
 * to run the loop() function to cause the draw() the 
 * run continuously. 
 */
let y = 0;

// The statements in the setup() function
// execute once when the program begins
function setup() {
  createCanvas(720, 400); // Size must be the first statement
  stroke(255); // Set line drawing color to white
  frameRate(30);
  noLoop();
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

function mousePressed(){
  loop();
}
