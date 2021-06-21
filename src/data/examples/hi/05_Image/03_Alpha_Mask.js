/*
  * @name अल्फा मास्क
  * @description में पारदर्शिता निर्दिष्ट करने के लिए एक छवि के लिए "मास्क" लोड करता है
  * छवि के विभिन्न भाग। दो छवियों को एक साथ मिश्रित कर रहे हैं
  * mask() p5.Image की विधि।
  * <p><em><span class="small"> इस उदाहरण को स्थानीय रूप से चलाने के लिए, आपको दो की आवश्यकता होगी
  * छवि फ़ाइलें, और चल रहे <a href="https://github.com/processing/p5.js/wiki/Local-server">
  * स्थानीय सर्वर</a>.</span></em></p>
  */
let img;
let imgMask;

function preload() {
  img = loadImage('assets/moonwalk.jpg');
  imgMask = loadImage('assets/mask.png');
}

function setup() {
  createCanvas(720, 400);
  img.mask(imgMask);
  imageMode(CENTER);
}

function draw() {
  background(0, 102, 153);
  image(img, width / 2, height / 2);
  image(img, mouseX, mouseY);
}
