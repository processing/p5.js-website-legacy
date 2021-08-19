/**
  * @name नोट लिफाफा
  * @description <p>एक लिफाफा फीका पड़ने की एक श्रृंखला है, परिभाषित
  * समय / मूल्य जोड़े के रूप में। इस उदाहरण में, लिफाफा
  * आउटपुट को नियंत्रित करके किसी नोट को "प्ले" करने के लिए उपयोग किया जाएगा
  * एक थरथरानवाला का आयाम।<br/><br/>
  * p5.Oscillator इसके माध्यम से अपना आउटपुट भेजता है
  * एक आंतरिक वेब ऑडियो GainNode (p5.Oscillator.output)।
  * डिफ़ॉल्ट रूप से, उस नोड का निरंतर मान 0.5 होता है। यह
  * osc.amp() विधि से रीसेट करें। या, इस उदाहरण में, an
  * लिफाफा आयाम को मोड़ते हुए उस नोड को नियंत्रित करता है
  * वॉल्यूम नॉब की तरह ऊपर और नीचे।</p>
  * <p><em><span class="small"> इस उदाहरण को स्थानीय रूप से चलाने के लिए, आपको इसकी आवश्यकता होगी
  * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound लाइब्रेरी</a> और a
  * ध्वनि फ़ाइल।</span></em></p>
  */
let osc, envelope, fft;

let scaleArray = [60, 62, 64, 65, 67, 69, 71, 72];
let note = 0;

function setup() {
  createCanvas(710, 200);
  osc = new p5.SinOsc();

  // लिफाफे को तुरंत चालू करें
  envelope = new p5.Env();

  // सेट अटैकटाइम, डिकेटाइम, सस्टेनरैटियो, रिलीजटाइम
  envelope.setADSR(0.001, 0.5, 0.1, 0.5);

  // अटैकलेवल सेट करें, रिलीजलेवल
  envelope.setRange(1, 0);

  osc.start();

  fft = new p5.FFT();
  noStroke();
}

function draw() {
  background(20);

  if (frameCount % 60 === 0 || frameCount === 1) {
    let midiValue = scaleArray[note];
    let freqValue = midiToFreq(midiValue);
    osc.freq(freqValue);

    envelope.play(osc, 0, 0.1);
    note = (note + 1) % scaleArray.length;
  }

  // प्लॉट FFT.analyze () कैनवास पर आवृत्ति विश्लेषण
  let spectrum = fft.analyze();
  for (let i = 0; i < spectrum.length / 20; i++) {
    fill(spectrum[i], spectrum[i] / 10, 0);
    let x = map(i, 0, spectrum.length / 20, 0, width);
    let h = map(spectrum[i], 0, 255, 0, height);
    rect(x, height, spectrum.length / 20, -h);
  }
}
