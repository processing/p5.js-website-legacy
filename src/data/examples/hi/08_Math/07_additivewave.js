/*
  * @name Additive Wave
  * @description दो तरंगों को एक साथ जोड़कर अधिक जटिल तरंग बनाएं।
  * डैनियल शिफमैन द्वारा मूल
  */
let xspacing = 8; // प्रत्येक क्षैतिज स्थान के बीच की दूरी
let w; // पूरी लहर की चौड़ाई
let maxwaves = 4; // कुल # तरंगों को एक साथ जोड़ने के लिए

let theta = 0.0;
let amplitude = new Array(maxwaves); // लहर की ऊंचाई
// एक्स बढ़ाने के लिए मूल्य, गणना की जानी है
// अवधि और xspacing के एक समारोह के रूप में
let dx = new Array(maxwaves);
// ऊंचाई मूल्यों को संग्रहीत करने के लिए एक सरणी का उपयोग करना
// लहर के लिए (पूरी तरह से आवश्यक नहीं)
let yvalues;

function setup() {
  createCanvas(710, 400);
  frameRate(30);
  colorMode(RGB, 255, 255, 255, 100);
  w = width + 16;

  for (let i = 0; i < maxwaves; i++) {
    amplitude[i] = random(10, 30);
    let period = random(100, 300); // तरंग दोहराने से पहले पिक्सेल की संख्या before
    dx[i] = (TWO_PI / period) * xspacing;
  }

  yvalues = new Array(floor(w / xspacing));
}

function draw() {
  background(0);
  calcWave();
  renderWave();
}

function calcWave() {
   // वृद्धि थीटा (विभिन्न मूल्यों का प्रयास करें
   // यहां 'कोणीय वेग' के लिए
  theta += 0.02;

  // सभी ऊंचाई मानों को शून्य पर सेट करें
  for (let i = 0; i < yvalues.length; i++) {
    yvalues[i] = 0;
  }

  // तरंग ऊंचाई मान संचित करें
  for (let j = 0; j < maxwaves; j++) {
    let x = theta;
    for (let i = 0; i < yvalues.length; i++) {
      // हर दूसरी लहर साइन के बजाय कोसाइन है
      if (j % 2 == 0) yvalues[i] += sin(x) * amplitude[j];
      else yvalues[i] += cos(x) * amplitude[j];
      x += dx[j];
    }
  }
}

function renderWave() {
  // प्रत्येक स्थान पर एक अंडाकार के साथ लहर खींचने का एक आसान तरीका simple
  noStroke();
  fill(255, 50);
  ellipseMode(CENTER);
  for (let x = 0; x < yvalues.length; x++) {
    ellipse(x * xspacing, width / 2 + yvalues[x], 16, 16);
  }
}
