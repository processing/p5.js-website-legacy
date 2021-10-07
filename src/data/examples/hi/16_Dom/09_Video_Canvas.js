/*
  * @name वीडियो कैनवास
  * @description <p>एक वीडियो को कई फ़ॉर्मैट में लोड करें और उसे कैनवास पर ड्रा करें।</p>
  * <p><em><span class="small"> इस उदाहरण को स्थानीय रूप से चलाने के लिए, आपको इसकी आवश्यकता होगी
  * <a href="http://p5js.org/reference/#/libraries/p5.dom">p5.dom लाइब्रेरी</a>
  * कम से कम एक वीडियो फ़ाइल, और एक चालू <a href="https://github.com/processing/p5.js/wiki/Local-server">स्थानीय सर्वर</a>।</span></em </p>
  */
let fingers;

function setup() {
  createCanvas(710, 400);
  // विभिन्न ब्राउज़रों के लिए कई प्रारूप निर्दिष्ट करें
  fingers = createVideo(['assets/fingers.mov', 'assets/fingers.webm']);
  fingers.hide(); // डिफ़ॉल्ट रूप से वीडियो अलग डोम में दिखाई देता है
   // तत्व। इसे छुपाएं और इसे कैनवास पर खींचें
   // बजाय
}

function draw() {
  background(150);
  image(fingers, 10, 10); // वीडियो फ्रेम को कैनवास पर ड्रा करें
  filter(GRAY);
  image(fingers, 150, 150); // कैनवास पर दूसरी कॉपी बनाएं
}

function mousePressed() {
  fingers.loop(); // वीडियो को लूप में सेट करें और खेलना शुरू करें
}
