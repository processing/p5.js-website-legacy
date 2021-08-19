/*
  * @name पैन साउंड
  * @description <p>ध्वनि चलाने के लिए माउस क्लिक करें।
  * गेंद की स्थिति माउस का अनुसरण करती है और ध्वनि की पैनिंग से संबंधित होती है।</p>
  * <p><em><span class="small"> इस उदाहरण को स्थानीय रूप से चलाने के लिए, आपको इसकी आवश्यकता होगी
  * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound लाइब्रेरी</a>
  * एक ध्वनि फ़ाइल, और एक चल रहा <a href="https://github.com/processing/p5.js/wiki/Local-server">स्थानीय सर्वर</a>।</span></em>< /पी>
  *
  */
let ball = {};
let soundFile;

function preload() {
  soundFormats('mp3', 'ogg');
  soundFile = loadSound('assets/beatbox.ogg');
}

function setup() {
  createCanvas(710, 100);
}

function draw() {
  background(0);
  ball.x = constrain(mouseX, 0, width);
  ellipse(ball.x, height / 2, 100, 100);
}

function mousePressed() {
   // गेंद के x स्थान को पैनिंग डिग्री पर मैप करें
   // -1.0 (बाएं) और 1.0 (दाएं) के बीच
  let panning = map(ball.x, 0, width, -1.0, 1.0);
  soundFile.pan(panning);
  soundFile.play();
}
