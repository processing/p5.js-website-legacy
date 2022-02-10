/*
 * @name Scale
 * @arialabel Two squares one white and one black grow and shrink on a grey background 
 * @description Paramenters for the scale() function are values
 * specified as decimal percentages. For example, the method
 * call scale(2.0) will increase the dimension of the shape by
 * 200 percent. Objects always scale from the origin. This example
 * shows how transforms accumulate and also how scale and translate
 * interact depending on their order.
 */

let a = 0.0;
let s = 0.0;

function setup() {
  createCanvas(720, 400);
  noStroke();
  //Draw all rectangles from their center as opposed to
  // the default upper left corner
  rectMode(CENTER);
}

function draw() {
  background(102);

  //Slowly increase 'a' and then animate 's' with
  //a smooth cyclical motion by finding the cosine of 'a'
  a = a + 0.04;
  s = cos(a) * 2;

  //Translate our rectangle from the origin to the middle of
  //the canvas, then scale it with 's'
  translate(width / 2, height / 2);
  scale(s);
  fill(51);
  rect(0, 0, 50, 50);

  //Translate and scale are accumulating, so this translate
  //moves the second rectangle further right than the first
  //and the scale is getting doubled. Note that cosine is
  //making 's' both negative and positive, thus it cycles
  //from left to right.
  translate(75, 0);
  fill(255);
  scale(s);
  rect(0, 0, 50, 50);
}
