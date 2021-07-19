/**
  *  @name देरी
  *  @description
  * p5 सुनने के लिए माउस क्लिक करें। साउंडफाइल को प्रोसेस करने में देरी करें।
  * MouseX p5.Delay फ़िल्टर फ़्रीक्वेंसी को नियंत्रित करता है।
  * MouseY p5.Delay Time और Resonance दोनों को नियंत्रित करता है।
  * एक आयाम वस्तु के साथ परिणामी ध्वनि की मात्रा की कल्पना करें।
  *
  * <p><em><span class="small"> इस उदाहरण को स्थानीय रूप से चलाने के लिए, आपको इसकी आवश्यकता होगी
  * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound लाइब्रेरी</a>
  * एक ध्वनि फ़ाइल, और एक चल रहा <a href="https://github.com/processing/p5.js/wiki/Local-server">स्थानीय सर्वर</a>।</span></em></p>
  */

let soundFile, analyzer, delay;

function preload() {
  soundFormats('ogg', 'mp3');
  soundFile = loadSound('assets/beatbox.mp3');
}

function setup() {
  createCanvas(710, 400);

  soundFile.disconnect(); // तो हम केवल देरी सुनेंगे

  delay = new p5.Delay();
  delay.process(soundFile, 0.12, 0.7, 2300);
  delay.setType('pingPong'); // एक स्टीरियो प्रभाव

  analyzer = new p5.Amplitude();
}

function draw() {
  background(0);

  // p5 से वॉल्यूम रीडिंग प्राप्त करें। आयाम विश्लेषक
  let level = analyzer.getLevel();

  // हरे रंग की आयत बनाने के लिए स्तर का उपयोग करें
  let levelHeight = map(level, 0, 0.1, 0, height);
  fill(100, 250, 100);
  rect(0, height, width, -levelHeight);

  let filterFreq = map(mouseX, 0, width, 60, 15000);
  filterFreq = constrain(filterFreq, 60, 15000);
  let filterRes = map(mouseY, 0, height, 3, 0.01);
  filterRes = constrain(filterRes, 0.01, 3);
  delay.filter(filterFreq, filterRes);
  let delTime = map(mouseY, 0, width, 0.2, 0.01);
  delTime = constrain(delTime, 0.01, 0.2);
  delay.delayTime(delTime);
}

function mousePressed() {
  soundFile.play();
}
