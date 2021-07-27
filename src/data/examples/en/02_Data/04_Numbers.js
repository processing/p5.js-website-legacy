/*
 * @name Numbers
 * @arialabel A black background with one white vertical line on the top half and one on the bottom. Both lines move from the left to the right of the screen with the top vertical line moving faster than the bottom.
 * @frame 720,400
 * @description Numbers can be written with or without decimals. An integer
 * (more commonly called an int) is a number without a decimal point. A float
 * is a floating-point number, which means it is a number that has a decimal
 * place.
 */
let a = 0; // Create a global variable "a" of type Number
let b = 0; // Create a global variable "b" of type Number

function setup() {
  createCanvas(720, 400);
  stroke(255);
}

function draw() {
  background(0);

  a = a + 1; // Increment a with an integer
  b = b + 0.2; //Increment b with a float
  line(a, 0, a, height / 2);
  line(b, height / 2, b, height);

  if (a > width) {
    a = 0;
  }
  if (b > width) {
    b = 0;
  }
}
