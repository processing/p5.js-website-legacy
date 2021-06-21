/*
  * @name पारदर्शिता
  * @description चित्र पर पॉइंटर को बाएँ और दाएँ घुमाएँ ताकि वह बदल जाए
  * पद। यह प्रोग्राम एक छवि को दूसरे के ऊपर संशोधित करके ओवरले करता है
  * tint() फ़ंक्शन के साथ छवि का अल्फा मान।
  * <p><em><span class="small"> इस उदाहरण को स्थानीय रूप से चलाने के लिए, आपको एक की आवश्यकता होगी
  * छवि फ़ाइल, और चल रही <a href="https://github.com/processing/p5.js/wiki/Local-server">
  * स्थानीय सर्वर</a>.</span></em></p>
  */
let img;
let offset = 0;
let easing = 0.05;

function setup() {
  createCanvas(720, 400);
  img = loadImage('assets/moonwalk.jpg'); // प्रोग्राम में एक छवि लोड करें
}

function draw() {
  image(img, 0, 0); // पूर्ण अस्पष्टता पर प्रदर्शित करें
  let dx = mouseX - img.width / 2 - offset;
  offset += dx * easing;
  tint(255, 127);  // आधी अस्पष्टता पर प्रदर्शित करें
  image(img, offset, 0);
}
