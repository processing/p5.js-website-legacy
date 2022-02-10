/*
  * @name थरथरानवाला आवृत्ति
  * @description <p>ऑसिलेटर को नियंत्रित करें और FFT का उपयोग करके तरंग देखें।
  * माउसएक्स को फ़्रीक्वेंसी से मैप किया जाता है, माउसवाई को एम्पलीट्यूड में मैप किया जाता है।</p>
  * <p><em><span class="small"> इस उदाहरण को स्थानीय रूप से चलाने के लिए, आपको इसकी आवश्यकता होगी
  * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound लाइब्रेरी</a> और a
  * ध्वनि फ़ाइल।</span></em></p>
  */
let osc, fft;

function setup() {
  createCanvas(720, 256);

  osc = new p5.TriOsc(); // आवृत्ति और प्रकार सेट करें
  osc.amp(0.5);

  fft = new p5.FFT();
  osc.start();
}

function draw() {
  background(255);

  let waveform = fft.waveform(); // तरंग का विश्लेषण करें
  beginShape();
  strokeWeight(5);
  for (let i = 0; i < waveform.length; i++) {
    let x = map(i, 0, waveform.length, 0, width);
    let y = map(waveform[i], -1, 1, height, 0);
    vertex(x, y);
  }
  endShape();

  // माउसएक्स के आधार पर थरथरानवाला आवृत्ति बदलें
  let freq = map(mouseX, 0, width, 40, 880);
  osc.freq(freq);

  let amp = map(mouseY, 0, height, 1, 0.01);
  osc.amp(amp);
}
