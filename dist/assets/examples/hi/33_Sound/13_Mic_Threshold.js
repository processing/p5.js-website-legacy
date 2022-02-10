/**
  * @name माइक थ्रेशोल्ड
  * @description <p>ऑडियो इनपुट होने पर एक ईवेंट ट्रिगर करें (एक आयत बनाएं))
  * वॉल्यूम एक सीमा से अधिक है।</p>
  * <p><em><span class="small"> इस उदाहरण को स्थानीय रूप से चलाने के लिए, आपको इसकी आवश्यकता होगी
  * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound लाइब्रेरी</a>
  * और एक चालू <a href="https://github.com/processing/p5.js/wiki/Local-server">स्थानीय सर्वर</a>।</span></em></p>
  */
// लर्निंग प्रोसेसिंग से अनुकूलित, डैनियल शिफमैन
// Learningprocessing.com
let input;
let analyzer;

function setup() {
  createCanvas(710, 200);
  background(255);

  // एक ऑडियो इनपुट बनाएं
  input = new p5.AudioIn();

  input.start();
}

function draw() {
  // कुल मात्रा प्राप्त करें (0 और 1.0 के बीच)
  let volume = input.getLevel();

   // यदि वॉल्यूम> 0.1, एक यादृच्छिक स्थान पर एक रेक्ट खींचा जाता है।
   // वॉल्यूम जितना बड़ा होगा, आयत उतना ही बड़ा होगा।
  let threshold = 0.1;
  if (volume > threshold) {
    stroke(0);
    fill(0, 100);
    rect(random(40, width), random(height), volume * 50, volume * 50);
  }

  // थ्रेशोल्ड पर समग्र संभावित आयतन, w / एक रेखा का ग्राफ़
  let y = map(volume, 0, 1, height, 0);
  let ythreshold = map(threshold, 0, 1, height, 0);

  noStroke();
  fill(175);
  rect(0, 0, 20, height);
  // फिर ग्राफ़ पर एक आयत बनाएं, जिसका आकार आयतन के अनुसार हो
  fill(0);
  rect(0, y, 20, y);
  stroke(0);
  line(0, ythreshold, 19, ythreshold);
}
