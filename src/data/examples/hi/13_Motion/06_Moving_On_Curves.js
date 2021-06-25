/*
  * @name मूविंग ऑन कर्व्स
  * @frame 720,400
  * @description इस उदाहरण में, वृत्त वक्र y = x^4 के अनुदिश चलते हैं।
  * माउस को नई स्थिति में ले जाने के लिए उस पर क्लिक करें।
  */

let beginX = 20.0; // वर्तमान x-निर्देशांक
let beginY = 10.0; // प्रारंभिक y-निर्देशांक
let endX = 570.0; // वर्तमान x-निर्देशांक
let endY = 320.0; // अंतिम y-निर्देशांक
let distX; // एक्स-अक्ष दूरी को स्थानांतरित करने के लिए
let distY; // वाई-अक्ष दूरी को स्थानांतरित करने के लिए
let exponent = 4; // वक्र निर्धारित करता है
let x = 0.0; // वर्तमान x-निर्देशांक
let y = 0.0; // वर्तमान y-निर्देशांक
let step = 0.01; // पथ के साथ प्रत्येक चरण का आकार
let pct = 0.0; // यात्रा का प्रतिशत (0.0 से 1.0)

function setup() {
  createCanvas(720, 400);
  noStroke();
  distX = endX - beginX;
  distY = endY - beginY;
}

function draw() {
  fill(0, 2);
  rect(0, 0, width, height);
  pct += step;
  if (pct < 1.0) {
    x = beginX + pct * distX;
    y = beginY + pow(pct, exponent) * distY;
  }
  fill(255);
  ellipse(x, y, 20, 20);
}

function mousePressed() {
  pct = 0.0;
  beginX = x;
  beginY = y;
  endX = mouseX;
  endY = mouseY;
  distX = endX - beginX;
  distY = endY - beginY;
}
