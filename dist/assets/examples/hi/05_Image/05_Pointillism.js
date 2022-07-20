/*
  * @name पॉइंटिलिज्म
  * @description डैन शिफमैन द्वारा। माउस क्षैतिज स्थान का आकार नियंत्रित करता है
  * डॉट्स। रंग के अनुसार दीर्घवृत्त का उपयोग करके एक साधारण पॉइंटिलिस्ट प्रभाव बनाता है
  * एक छवि में पिक्सेल के लिए।
  * <p><em><span class="small"> इस उदाहरण को स्थानीय रूप से चलाने के लिए, आपको एक की आवश्यकता होगी
  * छवि फ़ाइल, और चल रही <a href="https://github.com/processing/p5.js/wiki/Local-server">
  * स्थानीय सर्वर</a>.</span></em></p>
  */
let img;
let smallPoint, largePoint;

function preload() {
  img = loadImage('assets/moonwalk.jpg');
}

function setup() {
  createCanvas(720, 400);
  smallPoint = 4;
  largePoint = 40;
  imageMode(CENTER);
  noStroke();
  background(255);
  img.loadPixels();
}

function draw() {
  let pointillize = map(mouseX, 0, width, smallPoint, largePoint);
  let x = floor(random(img.width));
  let y = floor(random(img.height));
  let pix = img.get(x, y);
  fill(pix, 128);
  ellipse(x, y, pointillize, pointillize);
}
