/*
  * @name अन्तरक्रियाशीलता 1
  * @frame 720,425
  * @description जब आप इस पर क्लिक करते हैं तो सर्कल का रंग बदल जाता है।
  * <p><em><span class="small"> इस उदाहरण को स्थानीय रूप से चलाने के लिए, आपको इसकी आवश्यकता होगी
  * <a href="http://p5js.org/reference/#/libraries/p5.dom">p5.dom लाइब्रेरी</a>।
  * </em></p>
  */

// लाल, और रंग के रंग के लिए
let r, g, b;

function setup() {
  createCanvas(720, 400);
 // बेतरतीब ढंग से रंग चुनें
  r = random(255);
  g = random(255);
  b = random(255);
}

function draw() {
  background(127);
  // एक चक्र बनाएं
  strokeWeight(2);
  stroke(r, g, b);
  fill(r, g, b, 127);
  ellipse(360, 200, 200, 200);
}

// जब उपयोगकर्ता माउस पर क्लिक करता है
function mousePressed() {
  // जांचें कि क्या माउस सर्कल के अंदर है
  let d = dist(mouseX, mouseY, 360, 200);
  if (d < 100) {
    // नए यादृच्छिक रंग मान चुनें
    r = random(255);
    g = random(255);
    b = random(255);
  }
}
