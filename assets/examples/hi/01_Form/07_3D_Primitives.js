/*
  * @name ३डी प्रिमिटिव्स
  * @frame 720,400 (वैकल्पिक)
  * @description गणितीय रूप से 3D ऑब्जेक्ट को सिंथेटिक स्पेस में रखना।
  * box() और sphere() फ़ंक्शन उनके निर्दिष्ट करने के लिए कम से कम एक पैरामीटर लेते हैं
  * आकार। इन आकृतियों को translate() फ़ंक्शन का उपयोग करके स्थित किया जाता है।
  */
function setup() {
  createCanvas(710, 400, WEBGL);
}

function draw() {
  background(100);

  noStroke();
  fill(50);
  push();
  translate(-275, 175);
  rotateY(1.25);
  rotateX(-0.9);
  box(100);
  pop();

  noFill();
  stroke(255);
  push();
  translate(500, height * 0.35, -200);
  sphere(300);
  pop();
}
