/**
 * @name आयाम मॉडुलन
 * @description <p>एम्पलीट्यूड मॉड्यूलेशन में दो ऑसिलेटर शामिल होते हैं, जिन्हें संदर्भित किया जाता है
 * वाहक और न्यूनाधिक के रूप में, जहाँ न्यूनाधिक नियंत्रित करता है
 * वाहक का आयाम।</p>
 *
 * <p>वाहक आमतौर पर एक श्रव्य आवृत्ति (यानी 440 हर्ट्ज) पर सेट होता है
 * और डिफ़ॉल्ट रूप से मास्टर आउटपुट से जुड़ा है। वाहक.amp है
 * शून्य पर सेट करें क्योंकि हमारे पास मॉड्यूलेटर इसके आयाम को नियंत्रित करेगा।</p>
 *
 * <p>मॉड्यूलेटर मास्टर आउटपुट से डिस्कनेक्ट हो गया है। इसके बजाय, यह जुड़ा हुआ है
 * कैरियर के आयाम तक, इस तरह:वाहक.amp(मॉड्यूलेटर)।</p>
 *
 * <p>इस उदाहरण में...</p>
 * <p>- MouseX न्यूनाधिक के आयाम को नियंत्रित करता है
 * 0 से 1 तक। जब न्यूनाधिक का आयाम 0 पर सेट होता है, तो
 * आयाम मॉडुलन का कोई प्रभाव नहीं पड़ता है।</p>
 *
 * <p>- MouseY न्यूनाधिक की आवृत्ति को 0 से 20hz तक नियंत्रित करता है।
 * यह रेंज मनुष्यों की तुलना में कम आवृत्तियों की है, और हम अनुभव करते हैं
 * एक लय के रूप में मॉडुलन। यह श्रेणी ट्रेमोलो जैसे प्रभावों का अनुकरण कर सकती है।
 * रिंग मॉड्यूलेशन एक प्रकार का एम्प्लीट्यूड मॉड्यूलेशन है जहां मूल
 * वाहक संकेत मौजूद नहीं है, और अक्सर तेजी से मॉडुलन शामिल होता है
 * आवृत्ति। </p>
 *
 * <p><em><span class="small">आपको इसमें शामिल करना होगा
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound लाइब्रेरी</a>
 * इस उदाहरण के लिए अपने स्वयं के प्रोजेक्ट में काम करने के लिए।</em></span></p>
 */
let carrier; // यह थरथरानवाला है जिसे हम सुनेंगे
let modulator; // यह थरथरानवाला वाहक के आयाम को संशोधित करेगा
let fft; // हम तरंग की कल्पना करेंगे

function setup() {
  createCanvas(800, 400);
  noFill();
  background(30); // अल्फा

  carrier = new p5.Oscillator(); // डिफ़ॉल्ट रूप से मास्टर आउटपुट से जुड़ता है
  carrier.freq(340);
  carrier.amp(0);
  // वाहक का amp डिफ़ॉल्ट रूप से 0 है, हमारे न्यूनाधिक को कुल नियंत्रण देता है

  carrier.start();

  modulator = new p5.Oscillator('triangle');
  modulator.disconnect(); // मास्टर आउटपुट से मॉड्यूलेटर को डिस्कनेक्ट करें
  modulator.freq(5);
  modulator.amp(1);
  modulator.start();

   // न्यूनाधिक के साथ वाहक के आयाम को संशोधित करें
   // वैकल्पिक रूप से, हम सिग्नल को स्केल कर सकते हैं।
  carrier.amp(modulator.scale(-1, 1, 1, -1));

  // ऑडियो का विश्लेषण करने के लिए एक fft बनाएं
  fft = new p5.FFT();
}

function draw() {
  background(30, 30, 30, 100); // अल्फा

  // माउसY को 0 और 20hz के बीच मूड्यूलेटर फ़्रीक में मैप करें
  let modFreq = map(mouseY, 0, height, 20, 0);
  modulator.freq(modFreq);

  let modAmp = map(mouseX, 0, width, 0, 1);
  modulator.amp(modAmp, 0.01); // चिकनी लुप्त होती के लिए 0.1 का फीका समय fade

  // तरंग का विश्लेषण करें
  waveform = fft.waveform();

  // तरंग का आकार बनाएं
  drawWaveform();

  drawText(modFreq, modAmp);
}

function drawWaveform() {
  stroke(240);
  strokeWeight(4);
  beginShape();
  for (let i = 0; i < waveform.length; i++) {
    let x = map(i, 0, waveform.length, 0, width);
    let y = map(waveform[i], -1, 1, -height / 2, height / 2);
    vertex(x, y + height / 2);
  }
  endShape();
}

function drawText(modFreq, modAmp) {
  strokeWeight(1);
  text('Modulator Frequency: ' + modFreq.toFixed(3) + ' Hz', 20, 20);
  text('Modulator Amplitude: ' + modAmp.toFixed(3), 20, 40);
}
