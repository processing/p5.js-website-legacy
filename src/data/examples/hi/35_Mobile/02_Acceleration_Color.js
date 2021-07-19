/*
  * @name त्वरण रंग
  * @description डिवाइस को घुमाए जाने का पता लगाने के लिए deviceMoved() का उपयोग करें। पृष्ठभूमि आरजीबी रंग मान एक्सेलेरेशन एक्स, एक्सेलेरेशन वाई, और एक्सेलेरेशन जेड मानों पर मैप किए जाते हैं।
  */

let r, g, b;

function setup() {
  createCanvas(displayWidth, displayHeight);
  r = random(50, 255);
  g = random(0, 200);
  b = random(50, 255);
}

function draw() {
  background(r, g, b);
  console.log('draw');
}

function deviceMoved() {
  r = map(accelerationX, -90, 90, 100, 175);
  g = map(accelerationY, -90, 90, 100, 200);
  b = map(accelerationZ, -90, 90, 100, 200);
}
