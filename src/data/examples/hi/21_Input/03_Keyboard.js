/*
  * @name कीबोर्ड
  * @description इमेज को फोकस करने के लिए उस पर क्लिक करें और
  * समय और स्थान में फ़ॉर्म बनाने के लिए अक्षर कुंजियाँ दबाएँ।
  * प्रत्येक कुंजी की एक विशिष्ट पहचान संख्या होती है। ये नंबर
  * अंतरिक्ष में आकृतियों की स्थिति के लिए इस्तेमाल किया जा सकता है।
  */
let rectWidth;

function setup() {
  createCanvas(720, 400);
  noStroke();
  background(230);
  rectWidth = width / 4;
}

function draw() {
  // चाबियों की प्रतीक्षा करते हुए लूपिंग जारी रखने के लिए यहां draw() रखें
}

function keyPressed() {
  let keyIndex = -1;
  if (key >= 'a' && key <= 'z') {
    keyIndex = key.charCodeAt(0) - 'a'.charCodeAt(0);
  }
  if (keyIndex === -1) {
    // यदि यह एक अक्षर कुंजी नहीं है, तो स्क्रीन को साफ़ करें
    background(230);
  } else {
    // यह एक अक्षर कुंजी है, एक आयत भरें
    randFill_r = Math.floor(Math.random() * 255 + 1);
    randFill_g = Math.floor(Math.random() * 255 + 1);
    randFill_b = Math.floor(Math.random() * 255 + 1);
    fill(randFill_r, randFill_g, randFill_b);
    let x = map(keyIndex, 0, 25, 0, width - rectWidth);
    rect(x, 0, rectWidth, height);
  }
}
