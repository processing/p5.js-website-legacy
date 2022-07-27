/*
  * @name शोर लहर
  * @description तरंग जैसा पैटर्न उत्पन्न करने के लिए पर्लिन शोर का उपयोग करना।
  * डैनियल शिफमैन द्वारा मूल।
  */
let yoff = 0.0; // पर्लिन शोर का दूसरा आयाम

function setup() {
  createCanvas(710, 400);
}

function draw() {
  background(51);

  fill(255);
  // हम तरंग बिंदुओं से एक बहुभुज बनाने जा रहे हैं
  beginShape();

  let xoff = 0; // विकल्प # 1: 2D शोर
  // चलो xoff = yoff; // विकल्प # 2: 1D शोर

 // क्षैतिज पिक्सेल पर पुनरावृति
  for (let x = 0; x <= width; x += 10) {
    // शोर के अनुसार y मान की गणना करें, मानचित्र करें

    // विकल्प # 1: 2D शोर
    let y = map(noise(xoff, yoff), 0, 1, 200, 300);

     // विकल्प # 2: 1D शोर
     // चलो y = नक्शा (शोर (xoff), 0, 1, 200,300);

   // शीर्ष सेट करें
    vertex(x, y);
    // शोर के लिए वृद्धि x आयाम
    xoff += 0.05;
  }
  // शोर के लिए वृद्धि y आयाम
  yoff += 0.01;
  vertex(width, height);
  vertex(0, height);
  endShape(CLOSE);
}
