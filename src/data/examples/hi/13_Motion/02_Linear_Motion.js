/*
  * @name रैखिक
  * @frame 720,400
  * @description मूविंग लाइन बनाने के लिए वेरिएबल को बदलना।
  * जब रेखा खिड़की के किनारे से हटती है,
  * वेरिएबल को 0 पर सेट किया जाता है, जो लाइन को स्क्रीन के निचले हिस्से में वापस रखता है।
  */

let a;

function setup() {
  createCanvas(720, 400);
  stroke(255);
  a = height / 2;
}

function draw() {
  background(51);
  line(0, a, width, a);
  a = a - 0.5;
  if (a < 0) {
    a = height;
  }
}
