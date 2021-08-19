/*
  * @name वीडियो कैप्चर
  * @frame 710,240
  * @description <p><em><span class="small"> इस उदाहरण को स्थानीय रूप से चलाने के लिए, आपको इसकी आवश्यकता होगी
  * <a href="http://p5js.org/reference/#/libraries/p5.dom">p5.dom लाइब्रेरी</a>
  * कम से कम एक वीडियो फ़ाइल, और एक चालू <a href="https://github.com/processing/p5.js/wiki/Local-server">स्थानीय सर्वर</a>।</span></em </p><br><br>
  * वेबकैम से वीडियो कैप्चर करें और प्रदर्शित करें
  * कैनवास पर और साथ ही इनवर्ट फिल्टर के साथ। ध्यान दें कि द्वारा
  * डिफॉल्ट कैप्चर फीड भी दिखाई देता है। आप छुपा सकते हैं
  * capture.hide() लाइन को अनकम्मेंट करके फीड करें।
  */
let capture;

function setup() {
  createCanvas(390, 240);
  capture = createCapture(VIDEO);
  capture.size(320, 240);
  //capture.hide();
}

function draw() {
  background(255);
  image(capture, 0, 0, 320, 240);
  filter(INVERT);
}
