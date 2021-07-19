/*
  * @name टिकल 
  * @description कर्सर के ऊपर मंडराने पर "टिकल" शब्द कांपता है।
  * कभी-कभी, इसे स्क्रीन से गुदगुदी किया जा सकता है।
  */
let message = 'tickle',
  font,
  bounds, // टेक्स्ट के बाउंडिंग बॉक्स का x, y, w, h रखता है
  fontsize = 60,
  x,
  y; // x और y पाठ के निर्देशांक

function preload() {
  font = loadFont('assets/SourceSansPro-Regular.otf');
}

function setup() {
  createCanvas(710, 400);

  // फ़ॉन्ट सेट करें
  textFont(font);
  textSize(fontsize);

  // पाठ की चौड़ाई और ऊंचाई प्राप्त करें ताकि हम इसे शुरू में केंद्रित कर सकें
  bounds = font.textBounds(message, 0, 0, fontsize);
  x = width / 2 - bounds.w / 2;
  y = height / 2 - bounds.h / 2;
}

function draw() {
  background(204, 120);

  // टेक्स्ट को काले रंग में लिखें और उसका बाउंडिंग बॉक्स प्राप्त करें
  fill(0);
  text(message, x, y);
  bounds = font.textBounds(message, x, y, fontsize);

  // जांचें कि क्या माउस बाउंडिंग बॉक्स के अंदर है और यदि ऐसा है तो गुदगुदी करें
  if (
    mouseX >= bounds.x &&
    mouseX <= bounds.x + bounds.w &&
    mouseY >= bounds.y &&
    mouseY <= bounds.y + bounds.h
  ) {
    x += random(-5, 5);
    y += random(-5, 5);
  }
}
