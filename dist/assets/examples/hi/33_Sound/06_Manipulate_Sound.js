/*
  * @name प्लेबैक दर
  * @description <p>एक साउंडफाइल लोड करें और इसकी प्लेबैक दर को इस पर मैप करें
  * माउसवाई, वॉल्यूम टू माउसएक्स। प्लेबैक दर गति के साथ है
  * जो वेब ऑडियो संदर्भ ध्वनि फ़ाइल जानकारी को संसाधित करता है।
  * धीमी दरें न केवल ध्वनि की अवधि को बढ़ाती हैं, बल्कि
  * पिच को कम करें क्योंकि इसे धीमी आवृत्ति पर वापस खेला जा रहा है।</p>
  * <p><em><span class="small"> इस उदाहरण को स्थानीय रूप से चलाने के लिए, आपको इसकी आवश्यकता होगी
  * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound लाइब्रेरी</a>
  * एक ध्वनि फ़ाइल, और एक चल रहा <a href="https://github.com/processing/p5.js/wiki/Local-server">स्थानीय सर्वर</a>।</span></em>< /p>
  */
// एक ध्वनि फ़ाइल वस्तु
let song;

function preload() {
  // एक ध्वनि फ़ाइल लोड करें
  song = loadSound('assets/Damscray_DancingTiger.mp3');
}

function setup() {
  createCanvas(710, 400);

   // ध्वनि को हमेशा के लिए लूप करें
   // (ठीक है, कम से कम स्टॉप () कहा जाता है)
  song.loop();
}

function draw() {
  background(200);

  // वॉल्यूम को 0 और 1.0 . के बीच की सीमा पर सेट करें
  let volume = map(mouseX, 0, width, 0, 1);
  volume = constrain(volume, 0, 1);
  song.amp(volume);

   // दर को 0.1 और 4 . के बीच की सीमा पर सेट करें
   // दर बदलने से पिच बदल जाती है
  let speed = map(mouseY, 0.1, height, 0, 2);
  speed = constrain(speed, 0.01, 4);
  song.rate(speed);

  // क्या हो रहा है यह दिखाने के लिए कुछ मंडल बनाएं
  stroke(0);
  fill(51, 100);
  ellipse(mouseX, 100, 48, 48);
  stroke(0);
  fill(51, 100);
  ellipse(100, mouseY, 48, 48);
}
