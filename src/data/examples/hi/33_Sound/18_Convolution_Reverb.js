/**
  * @name कनवल्शन रेवरब
  * @description <p>p5.Convolver वास्तविक ध्वनि को फिर से बना सकता है
  * कनवल्शन का उपयोग करके रिक्त स्थान। कनवल्शन एक आवेग प्रतिक्रिया लेता है,
  * (एक कमरे की आवाज़ गूंजती है), और इसका उपयोग करता है
  * उस स्थान की ध्वनि को फिर से बनाएं।</p><p>किसी ध्वनि को चलाने के लिए क्लिक करें
  * संकल्प। हर बार जब आप क्लिक करते हैं, तो ध्वनि संकुचित हो जाती है
  * एक अलग आवेग प्रतिक्रिया। इंपल्स रिस्पांस को ही सुनने के लिए,
  * कोई भी कुंजी दबाएं।</p>
  *
  * <p><em><span class="small">इस उदाहरण को स्थानीय रूप से चलाने के लिए, आपको इसकी आवश्यकता होगी
  * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound लाइब्रेरी</a>
  * एक ध्वनि फ़ाइल, और एक चल रहा <a href="https://github.com/processing/p5.js/wiki/Local-server">स्थानीय सर्वर</a>।
  * ये कनवल्शन नमूने Creative Commons BY . हैं
  * <a href="https://www.freesound.org/people/recordinghopkins/">
  * रिकॉर्डिंगहॉपकिंस</a></em></span></p>
  */
let sound, env, cVerb, fft;
let currentIR = 0;
let rawImpulse;

function preload() {
  // हमने सभी आवेगों / ध्वनियों के एमपी 3 और ओजीजी दोनों संस्करणों को शामिल किया है
  soundFormats('ogg', 'mp3');

  // एक p5.Convolver बनाएं
  cVerb = createConvolver('assets/bx-spring');

  // bx-spring के अलावा cVerb.impulses ऐरे में इंपल्स रिस्पॉन्स जोड़ें
  cVerb.addImpulse('assets/small-plate');
  cVerb.addImpulse('assets/drum');
  cVerb.addImpulse('assets/beatbox');
  cVerb.addImpulse('assets/concrete-tunnel');

  // एक ध्वनि लोड करें जिसे p5.ConvultionReverb द्वारा संसाधित किया जाएगा
  sound = loadSound('assets/Damscray_DancingTiger');
}

function setup() {
  createCanvas(710, 400);
  rawImpulse = loadSound('assets/' + cVerb.impulses[currentIR].name);

  // मास्टर आउटपुट से डिस्कनेक्ट करें ...
  sound.disconnect();
   // ... और cVerb . के साथ प्रक्रिया करें
   // ताकि हम केवल reverb सुनें
  cVerb.process(sound);

  fft = new p5.FFT();
}

function draw() {
  background(30);
  fill(0, 255, 40);

  let spectrum = fft.analyze();

  // फ़्रीक्वेंसीस्पेक्ट्रम सरणी में प्रत्येक मान को आयत के रूप में ड्रा करें
  noStroke();
  for (let i = 0; i < spectrum.length; i++) {
    let x = map(i, 0, spectrum.length, 0, width);
    let h = -height + map(spectrum[i], 0, 255, height, 0);
    rect(x, height, width / spectrum.length, h);
  }
}

function mousePressed() {
  // cVerb.impulses की सरणी के माध्यम से चक्र
  currentIR++;
  if (currentIR >= cVerb.impulses.length) {
    currentIR = 0;
  }
  cVerb.toggleImpulse(currentIR);

  // आवेग के माध्यम से ध्वनि बजाएं
  sound.play();

  // वर्तमान आवेग प्रतिक्रिया नाम प्रदर्शित करें (फ़ाइलपथ)
  println('Convolution Impulse Response: ' + cVerb.impulses[currentIR].name);

  rawImpulse.setPath('assets/' + cVerb.impulses[currentIR].name);
}

// आवेग खेलें (बिना दृढ़ संकल्प के)
function keyPressed() {
  rawImpulse.play();
}
