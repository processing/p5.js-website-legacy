/**
  * @name रेवरब
  * @description Reverb ध्वनि को गहराई और कथित स्थान देता है। यहाँ,
  * शोर reverb के साथ संसाधित किया जाता है।
  *
  * <p><em><span class="small"> इस उदाहरण को स्थानीय रूप से चलाने के लिए, आपको इसकी आवश्यकता होगी
  * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound लाइब्रेरी</a>
  * एक ध्वनि फ़ाइल, और एक चल रहा <a href="https://github.com/processing/p5.js/wiki/Local-server">स्थानीय सर्वर</a>।</span></em></p>
  */
let sound, reverb;

function preload() {
  soundFormats('mp3', 'ogg');
  soundFile = loadSound('assets/Damscray_DancingTiger');

   // डिफ़ॉल्ट कनेक्शन को डिस्कनेक्ट करें
   // ताकि हम केवल ध्वनि को reverb.process के माध्यम से सुनें
  soundFile.disconnect();
}

function setup() {
  createCanvas(720, 100);
  background(0);

  reverb = new p5.Reverb();

   // सोननेक्ट्स साउंडफाइल a with के साथ रीवरब करने के लिए
   // reverb 6 सेकंड का समय, 0.2% की क्षय दर
  reverb.process(soundFile, 6, 0.2);

  reverb.amp(4); // और बढ़ाओ!
}

function mousePressed() {
  soundFile.play();
}
