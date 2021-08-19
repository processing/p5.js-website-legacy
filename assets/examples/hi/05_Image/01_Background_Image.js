/*
  * @name पृष्ठभूमि छवि
  * @description यह उदाहरण लोड करने का सबसे तेज़ तरीका प्रस्तुत करता है a
  * पृष्ठभूमि छवि। एक छवि को पृष्ठभूमि के रूप में लोड करने के लिए,
  * यह कार्यक्रम के समान चौड़ाई और ऊंचाई का होना चाहिए।
  * <p><em><span class="small"> इस उदाहरण को स्थानीय रूप से चलाने के लिए, आपको एक की आवश्यकता होगी
  * छवि फ़ाइल, और चल रही <a href="https://github.com/processing/p5.js/wiki/Local-server">
  * स्थानीय सर्वर</a>.</span></em></p>
  */
let bg;
let y = 0;

function setup() {
  // पृष्ठभूमि की छवि मापदंडों के समान आकार की होनी चाहिए
  // createCanvas () विधि में। इस कार्यक्रम में, का आकार
  // इमेज 720x400 पिक्सल है।
  bg = loadImage('assets/moonwalk.jpg');
  createCanvas(720, 400);
}

function draw() {
  background(bg);

  stroke(226, 204, 0);
  line(0, y, width, y);

  y++;
  if (y > height) {
    y = 0;
  }
}
