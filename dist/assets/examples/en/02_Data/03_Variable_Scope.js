/*
 * @name Variable Scope
 * @arialabel Black background with vertical white lines condensed on the left side
 * @description Variables have a global or function "scope". For example,
 * variables declared within either the setup() or draw() functions may be
 * only used in these functions. Global variables, variables declared outside
 * of setup() and draw(), may be used anywhere within the program. If a function
 * variable is declared with the same name as a global variable, the program
 * will use the function variable to make its calculations within the current
 * scope.
 */
let a = 80; // Create a global variable "a"

function setup() {
  createCanvas(720, 400);
  background(0);
  stroke(255);
  noLoop();
}

function draw() {
  // Draw a line using the global variable "a"
  line(a, 0, a, height);

  // Use a local variable a in for loop
  for (let a = 120; a < 200; a += 3) {
    line(a, 0, a, height);
  }

  // Make a call to the custom function drawAnotherLine()
  drawAnotherLine();

  // Make a call to the custom function drawYetAnotherLine()
  drawYetAnotherLine();
}

function drawAnotherLine() {
  // Create a new variable "a" local to this function
  let a = 320;
  // Draw a line using the local variable "a"
  line(a, 0, a, height);
}

function drawYetAnotherLine() {
  // Because no new local variable "a" is set,
  // this line draws using the original global
  // variable "a" which is set to the value 20.
  line(a + 3, 0, a + 3, height);
}
