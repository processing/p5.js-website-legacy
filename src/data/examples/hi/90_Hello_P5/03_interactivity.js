/*
  * @name अन्तरक्रियाशीलता 2
  * @frame 720,425
  * @description जब आप स्लाइडर को घुमाते हैं तो वृत्त का रंग बदल जाता है।
  * आपको शामिल करने की आवश्यकता होगी
  * <a href="http://p5js.org/reference/#/libraries/p5.dom">p5.dom लाइब्रेरी</a>
  * इस उदाहरण के लिए अपने स्वयं के प्रोजेक्ट में काम करने के लिए।
  */

// एक HTML रेंज स्लाइडर
let slider;

function setup() {
  createCanvas(720, 400);
  // रंग, संतृप्ति और चमक
  colorMode(HSB, 255);
  // स्लाइडर में 0 और 255 के बीच की सीमा होती है, जिसका शुरुआती मान 127 . होता है
  slider = createSlider(0, 255, 127);
}

function draw() {
  background(127);
  strokeWeight(2);

  // स्लाइडर के अनुसार रंग सेट करें
  stroke(slider.value(), 255, 255);
  fill(slider.value(), 255, 255, 127);
  ellipse(360, 200, 200, 200);
}