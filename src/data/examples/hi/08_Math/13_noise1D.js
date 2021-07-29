/*
  * @name Noise1D
  * @description स्थान निर्दिष्ट करने के लिए 1D Perlin Noise का उपयोग करना।
  */
let xoff = 0.0;
let xincrement = 0.01;

function setup() {
  createCanvas(710, 400);
  background(0);
  noStroke();
}

function draw() {
  // एक अल्फा ब्लेंडेड बैकग्राउंड बनाएं
  fill(0, 10);
  rect(0, 0, width, height);

  // चलो n = यादृच्छिक (0, चौड़ाई); // शोर के बजाय इस लाइन को आजमाएं

   // xoff और स्केल के आधार पर शोर मान प्राप्त करें
   // यह खिड़की की चौड़ाई के अनुसार है
  let n = noise(xoff) * width;

  // प्रत्येक चक्र के साथ, वृद्धि xoff
  xoff += xincrement;

  // पर्लिन शोर द्वारा उत्पन्न मूल्य पर दीर्घवृत्त को ड्रा करें
  fill(200);
  ellipse(n, height / 2, 64, 64);
}
