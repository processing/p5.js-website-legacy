/*
  * @name दालें
  * @description सॉफ्टवेयर ड्राइंग इंस्ट्रूमेंट्स एक लय का अनुसरण कर सकते हैं या इसका पालन कर सकते हैं
  * खींचे गए इशारों से स्वतंत्र नियम। यह सहयोगी आरेखण का एक रूप है
  * जिसमें ड्राफ्ट्सपर्सन इमेज और सॉफ्टवेयर के कुछ पहलुओं को नियंत्रित करता है
  *दूसरों को नियंत्रित करता है।
  */
let angle = 0;

function setup() {
  createCanvas(710, 400);
  background(102);
  noStroke();
  fill(0, 102);
}

function draw() {
  // तभी ड्रा करें जब माउस दबाया जाए
  if (mouseIsPressed === true) {
    angle += 5;
    let val = cos(radians(angle)) * 12.0;
    for (let a = 0; a < 360; a += 75) {
      let xoff = cos(radians(a)) * val;
      let yoff = sin(radians(a)) * val;
      fill(0);
      ellipse(mouseX + xoff, mouseY + yoff, val, val);
    }
    fill(255);
    ellipse(mouseX, mouseY, 2, 2);
  }
}
