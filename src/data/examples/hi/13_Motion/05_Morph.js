/*
  * @name मॉर्फ
  * @frame 720,400
  * @description शीर्षों को एक से दूसरे में प्रक्षेपित करके एक आकृति को दूसरी आकृति में बदलना।
  */

// दो ऐरेलिस्ट दो आकृतियों के लिए कोने को स्टोर करने के लिए
// यह उदाहरण मानता है कि प्रत्येक आकृति में समान होगा
// कोने की संख्या, यानी प्रत्येक ArrayList का आकार समान होगा
let circle = [];
let square = [];

// एक तीसरे सेट के लिए एक ऐरेलिस्ट, जिसे हम चित्रित करेंगे
// खिड़की में
let morph = [];

// यह बूलियन चर नियंत्रित करेगा यदि हम किसी वृत्त या वर्ग में रूपांतरित कर रहे हैं
let state = false;

function setup() {
  createCanvas(720, 400);

// केंद्र से इंगित करने वाले वैक्टर का उपयोग करके एक सर्कल बनाएं
  for (let angle = 0; angle < 360; angle += 9) {
    // ध्यान दें कि मिलान करने के लिए हम 0 से शुरू नहीं कर रहे हैं
     // एक सर्कल का पथ।
    let v = p5.Vector.fromAngle(radians(angle - 135));
    v.mult(100);
    circle.push(v);
    // जब हम इस पर होते हैं तो खाली PVectors के साथ morph ArrayList को भरते हैं
    morph.push(createVector());
  }

   // एक वर्ग सीधी रेखाओं के साथ कोने का एक गुच्छा है
   // वर्ग के ऊपर
  for (let x = -50; x < 50; x += 10) {
    square.push(createVector(x, -50));
  }
  // दाईं ओर
  for (let y = -50; y < 50; y += 10) {
    square.push(createVector(50, y));
  }
  // तल
  for (let x = 50; x > -50; x -= 10) {
    square.push(createVector(x, 50));
  }
  // बाईं तरफ
  for (let y = 50; y > -50; y -= 10) {
    square.push(createVector(-50, y));
  }
}

function draw() {
  background(51);

  // हम रखेंगे कि उनके लक्ष्य से कोने कितनी दूर हैं
  let totalDistance = 0;

  // प्रत्येक शीर्ष को देखें
  for (let i = 0; i < circle.length; i++) {
    let v1;
    // क्या हम वृत्त या वर्ग की ओर झुक रहे हैं?
    if (state) {
      v1 = circle[i];
    } else {
      v1 = square[i];
    }
    // वह शीर्ष प्राप्त करें जिसे हम खींचेंगे
    let v2 = morph[i];
    // लक्ष्य के लिए Lerp
    v2.lerp(v1, 0.1);
    // जांचें कि हम लक्ष्य से कितनी दूर हैं
    totalDistance += p5.Vector.dist(v1, v2);
  }

  // यदि सभी कोने करीब हैं, तो आकार बदलें
  if (totalDistance < 0.1) {
    state = !state;
  }

  // केंद्र के सापेक्ष ड्रा करें
  translate(width / 2, height / 2);
  strokeWeight(4);
  // एक बहुभुज बनाएं जो सभी शीर्षों को बनाता है
  beginShape();
  noFill();
  stroke(255);

  morph.forEach(v => {
    vertex(v.x, v.y);
  });
  endShape(CLOSE);
}
