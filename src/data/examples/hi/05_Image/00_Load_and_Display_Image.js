/*
  * @name लोड और डिस्प्ले इमेज
  * @description छवियों को लोड किया जा सकता है और स्क्रीन पर प्रदर्शित किया जा सकता है
  * वास्तविक आकार या कोई अन्य आकार।
  * <p><em><span class="small"> इस उदाहरण को स्थानीय रूप से चलाने के लिए, आपको एक की आवश्यकता होगी
  * छवि फ़ाइल, और चल रही <a href="https://github.com/processing/p5.js/wiki/Local-server">
  * स्थानीय सर्वर</a>.</span></em></p>
  */
let img; // वैरिएबल 'img' घोषित करें।

function setup() {
  createCanvas(720, 400);
  img = loadImage('assets/moonwalk.jpg'); // छवि लोड करें
}

function draw() {
  // छवि को उसके वास्तविक आकार में बिंदु (0,0) पर प्रदर्शित करता है
  image(img, 0, 0);
  // आधे आकार में छवि को बिंदु (0, ऊंचाई / 2) पर प्रदर्शित करता है
  image(img, 0, height / 2, img.width / 2, img.height / 2);
}
