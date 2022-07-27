/*
  * @name साइन वेव
  * @description एक साधारण साइन वेव रेंडर करें।
  * डैनियल शिफमैन द्वारा मूल।
  */

let xspacing = 16; // प्रत्येक क्षैतिज स्थान के बीच की दूरी
let w; // पूरी लहर की चौड़ाई
let theta = 0.0; // 0 . पर कोण प्रारंभ करें
let amplitude = 75.0; // लहर की ऊंचाई
let period = 500.0; // वेव रिपीट होने से पहले कितने पिक्सेल होते हैं
let dx; // एक्स बढ़ाने के लिए मूल्य
let yvalues; // तरंग के लिए ऊंचाई मानों को संग्रहीत करने के लिए एक सरणी का उपयोग करना

function setup() {
  createCanvas(710, 400);
  w = width + 16;
  dx = (TWO_PI / period) * xspacing;
  yvalues = new Array(floor(w / xspacing));
}

function draw() {
  background(0);
  calcWave();
  renderWave();
}

function calcWave() {
   // वृद्धि थीटा (के लिए विभिन्न मूल्यों का प्रयास करें values
   // 'कोणीय वेग' यहाँ) 
  theta += 0.02;

  // प्रत्येक x मान के लिए, साइन फ़ंक्शन के साथ y मान की गणना करें
  let x = theta;
  for (let i = 0; i < yvalues.length; i++) {
    yvalues[i] = sin(x) * amplitude;
    x += dx;
  }
}

function renderWave() {
  noStroke();
  fill(255);
  // प्रत्येक स्थान पर एक अंडाकार के साथ लहर खींचने का एक आसान तरीका simple
  for (let x = 0; x < yvalues.length; x++) {
    ellipse(x * xspacing, height / 2 + yvalues[x], 16, 16);
  }
}
