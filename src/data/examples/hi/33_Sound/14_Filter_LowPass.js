/**
  * @name फ़िल्टर लोपास
  * @description p5.LowPass फ़िल्टर को p5.SoundFile पर लागू करें।
  * एफएफटी के साथ ध्वनि की कल्पना करें।
  * फ़िल्टर की कटऑफ आवृत्ति के लिए माउसX को मैप करें
  * और माउसवाई बैंडपास फिल्टर की प्रतिध्वनि/चौड़ाई के लिएY
  *
  * <p><em><span class="small"> इस उदाहरण को स्थानीय रूप से चलाने के लिए, आपको इसकी आवश्यकता होगी
  * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound लाइब्रेरी</a>
  * एक ध्वनि फ़ाइल, और एक चल रहा <a href="https://github.com/processing/p5.js/wiki/Local-server">स्थानीय सर्वर</a>।</span></em></p>
  */
let soundFile;
let fft;

let filter, filterFreq, filterRes;

function preload() {
  soundFormats('mp3', 'ogg');
  soundFile = loadSound('assets/beat');
}

function setup() {
  createCanvas(710, 256);
  fill(255, 40, 255);

  // loop the sound file
  soundFile.loop();

  filter = new p5.LowPass();

   // मास्टर आउटपुट से साउंडफाइल को डिस्कनेक्ट करें।
   // फिर, इसे फ़िल्टर से कनेक्ट करें, ताकि हम केवल फ़िल्टर की गई ध्वनि सुन सकें  
  soundFile.disconnect();
  soundFile.connect(filter);

  fft = new p5.FFT();
}

function draw() {
  background(30);

   // माउसX को न्यूनतम से कटऑफ आवृत्ति पर मैप करें
   // आवृत्ति (10 हर्ट्ज) से उच्चतम (22050 हर्ट्ज) जो मनुष्य सुन सकते हैं
  filterFreq = map(mouseX, 0, width, 10, 22050);

  // मानचित्र माउसY कटऑफ आवृत्ति पर प्रतिध्वनि (वॉल्यूम बूस्ट) के लिए
  filterRes = map(mouseY, 0, height, 15, 5);

  // set filter parameters
  filter.set(filterFreq, filterRes);

   // एफएफटी स्पेक्ट्रम विश्लेषण में हर मूल्य ड्रा करें जहां
   // x = निम्नतम (10 हर्ट्ज) से उच्चतम (22050 हर्ट्ज) आवृत्तियों,
   // h = उस आवृत्ति पर ऊर्जा (आयाम / आयतन)
  let spectrum = fft.analyze();
  noStroke();
  for (let i = 0; i < spectrum.length; i++) {
    let x = map(i, 0, spectrum.length, 0, width);
    let h = -height + map(spectrum[i], 0, 255, height, 0);
    rect(x, height, width / spectrum.length, h);
  }
}
