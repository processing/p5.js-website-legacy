/**
  * @name फ़िल्टर बैंडपास
  * @description सफेद शोर के लिए p5.BandPass फ़िल्टर लागू करें।
  * एफएफटी के साथ ध्वनि की कल्पना करें।
  * मैप माउसX को बैंडपास फ़्रीक्वेंसी के लिए
  * और माउसवाई बैंडपास फिल्टर की प्रतिध्वनि/चौड़ाई के लिएY
  *
  * <p><em><span class="small"> इस उदाहरण को स्थानीय रूप से चलाने के लिए, आपको इसकी आवश्यकता होगी
  * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound लाइब्रेरी</a>
  * एक ध्वनि फ़ाइल, और एक चल रहा <a href="https://github.com/processing/p5.js/wiki/Local-server">स्थानीय सर्वर</a>।</span></em></p>
  */
let noise;
let fft;
let filter, filterFreq, filterWidth;

function setup() {
  createCanvas(710, 256);
  fill(255, 40, 255);

  filter = new p5.BandPass();

  noise = new p5.Noise();

  noise.disconnect(); // मास्टर आउटपुट से साउंडफाइल को डिस्कनेक्ट करें ...
  filter.process(noise); // ... और फ़िल्टर से कनेक्ट करें ताकि हम केवल बैंडपास सुन सकें।
  noise.start();

  fft = new p5.FFT();
}

function draw() {
  background(30);

  // FFT स्पेक्ट्रम रेंज से एक बैंडपास फ्रीक के लिए माउसX को मैप करें: 10Hz - 22050Hz
  filterFreq = map(mouseX, 0, width, 10, 22050);
  // मानचित्र माउसY प्रतिध्वनि/चौड़ाई के लिए
  filterWidth = map(mouseY, 0, height, 0, 90);
  // फ़िल्टर पैरामीटर सेट करें
  filter.set(filterFreq, filterWidth);

   // एफएफटी स्पेक्ट्रम विश्लेषण में हर मूल्य ड्रा करें जहां
   // x = निम्नतम (10 हर्ट्ज) से उच्चतम (22050 हर्ट्ज) आवृत्तियों,
   // एच = उस आवृत्ति पर ऊर्जा / आयाम
  let spectrum = fft.analyze();
  noStroke();
  for (let i = 0; i < spectrum.length; i++) {
    let x = map(i, 0, spectrum.length, 0, width);
    let h = -height + map(spectrum[i], 0, 255, height, 0);
    rect(x, height, width / spectrum.length, h);
  }
}
