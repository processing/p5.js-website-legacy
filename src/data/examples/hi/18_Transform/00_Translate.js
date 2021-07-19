/*
  * @name अनुवाद
  * @description translate() फ़ंक्शन वस्तुओं को होने की अनुमति देता है
  * खिड़की के भीतर किसी भी स्थान पर ले जाया गया। पहला पैरामीटर
  * एक्स-अक्ष ऑफसेट सेट करता है और दूसरा पैरामीटर सेट करता है
  * वाई-अक्ष ऑफसेट। यह उदाहरण दिखाता है कि परिवर्तन कैसे जमा होते हैं।
  */
let x = 0;
let y = 0;
let dim = 80.0;

function setup() {
  createCanvas(720, 400);
  noStroke();
}

function draw() {
  background(102);
  // Animate by increasing our x value
  x = x + 0.8;
  // If the shape goes off the canvas, reset the position
  if (x > width + dim) {
    x = -dim;
  }

  // Even though our rect command draws the shape with its
  // center at the origin, translate moves it to the new
  // x and y position
  translate(x, height / 2 - dim / 2);
  fill(255);
  rect(-dim / 2, -dim / 2, dim, dim);

  // Transforms accumulate. Notice how this rect moves
  // twice as fast as the other, but it has the same
  // parameter for the x-axis value
  translate(x, dim);
  fill(0);
  rect(-dim / 2, -dim / 2, dim, dim);
}
