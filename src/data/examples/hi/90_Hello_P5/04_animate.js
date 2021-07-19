/*
  * @name एनिमेशन
  * @description सर्कल चलता है।
  */
// सर्कल कहां है
let x, y;

function setup() {
  createCanvas(720, 400);
  // बीच में शुरू होता है
  x = width / 2;
  y = height;
}

function draw() {
  background(200);
  
  // एक चक्र बनाएं
  stroke(50);
  fill(100);
  ellipse(x, y, 24, 24);
  
  // क्षैतिज अक्ष पर बेतरतीब ढंग से झूलना
  x = x + random(-1, 1);
  // निरंतर गति से ऊपर जा रहा है
  y = y - 1;
  
  // नीचे की ओर रीसेट करें
  if (y < 0) {
    y = height;
  }
}

