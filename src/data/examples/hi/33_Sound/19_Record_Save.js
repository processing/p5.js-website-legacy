/**
  * @name रिकॉर्ड ऑडियो सहेजें
  * @description एक ध्वनि रिकॉर्ड करें, इसे वापस चलाएं और सहेजें
  * यह क्लाइंट के कंप्यूटर पर .wav फ़ाइल के रूप में।
  * हमें तीन वस्तुओं की आवश्यकता है: एक p5.ऑडियोइन (माइक / ध्वनि स्रोत),
  * p5.SoundRecorder (ध्वनि रिकॉर्ड करता है), और a
  * p5.SoundFile (प्ले बैक / सेव)।
  * <p><em><span class="small"> इस उदाहरण को स्थानीय रूप से चलाने के लिए, आपको इसकी आवश्यकता होगी
  * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound लाइब्रेरी</a>
  * एक ध्वनि फ़ाइल, और एक चल रहा <a href="https://github.com/processing/p5.js/wiki/Local-server">स्थानीय सर्वर</a>।</span></em></p>
  */
let mic, recorder, soundFile;

let state = 0; // माउसप्रेस रिकॉर्ड, स्टॉप, प्ले से बढ़ेगा

function setup() {
  createCanvas(400, 400);
  background(200);
  fill(0);
  text('Enable mic and click the mouse to begin recording', 20, 20);

  // में एक ऑडियो बनाएं
  mic = new p5.AudioIn();

  // उपयोगकर्ताओं को ठीक से काम करने के लिए रिकॉर्डिंग के लिए अपने ब्राउज़र माइक्रोफ़ोन को मैन्युअल रूप से सक्षम करना होगा!
  mic.start();

  // एक साउंड रिकॉर्डर बनाएं
  recorder = new p5.SoundRecorder();

  // माइक को रिकॉर्डर से कनेक्ट करें
  recorder.setInput(mic);

  // एक खाली ध्वनि फ़ाइल बनाएं जिसका उपयोग हम रिकॉर्डिंग को प्लेबैक करने के लिए करेंगे
  soundFile = new p5.SoundFile();
}

function mousePressed() {
  // यह सुनिश्चित करने के लिए '.सक्षम' बूलियन का उपयोग करें कि उपयोगकर्ता ने माइक को सक्षम किया है (अन्यथा हम मौन रिकॉर्ड करेंगे)
  if (state === 0 && mic.enabled) {
    // रिकॉर्डर को p5.SoundFile पर रिकॉर्ड करने के लिए कहें, जिसका उपयोग हम प्लेबैक के लिए करेंगे
    recorder.record(soundFile);

    background(255, 0, 0);
    text('Recording now! Click to stop.', 20, 20);
    state++;
  } else if (state === 1) {
    recorder.stop(); // रिकॉर्डर को रोकें, और परिणाम को साउंडफाइल पर भेजें

    background(0, 255, 0);
    text('Recording stopped. Click to play & save', 20, 20);
    state++;
  } else if (state === 2) {
    soundFile.play(); // परिणाम खेलें!
    saveSound(soundFile, 'mySound.wav'); // फाइल सुरक्षित करें
    state++;
  }
}
