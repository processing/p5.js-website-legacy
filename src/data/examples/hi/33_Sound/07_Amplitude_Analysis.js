/**
 * @name मापने वाला आयाम
 * @description <p>ध्वनि के आयाम का विश्लेषण करें
 * p5.आयाम।</p>
 *
 * <p><b>आयाम</b> कंपन का परिमाण है। ध्वनि कंपन है,
 * इसलिए इसका आयाम आयतन / प्रबलता से निकटता से संबंधित है।</p>
 *
 * <p><code>getLevel()</code> विधि एक सरणी लेती है
 * एक छोटी अवधि (1024 नमूने) में एकत्र किए गए आयाम मानों का।
 * फिर यह इन मानों का <b>रूट मीन स्क्वायर (RMS)</b> लौटाता है।</p>
 *
 * <p>डिजिटल ऑडियो के लिए मूल आयाम मान -1.0 और 1.0 के बीच हैं।
 * लेकिन आरएमएस हमेशा सकारात्मक रहेगा, क्योंकि यह चुकता है।
 * और, तात्कालिक आयाम रीडिंग का उपयोग करने के बजाय, जिन्हें एक दर पर नमूना लिया जाता है
 * प्रति सेकंड ४४,१०० बार, आरएमएस समय के साथ औसत है (इस मामले में १०२४ नमूने),
 * जो बेहतर ढंग से दर्शाता है कि हम आयाम कैसे सुनते हैं।
 * </p>
 * <p><em><span class="small"> इस उदाहरण को स्थानीय रूप से चलाने के लिए, आपको इसकी आवश्यकता होगी
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound लाइब्रेरी</a>
 * एक ध्वनि फ़ाइल, और एक चल रहा <a href="https://github.com/processing/p5.js/wiki/Local-server">स्थानीय सर्वर</a>।</span></em></p>
 */
let song, analyzer;

function preload() {
  song = loadSound('assets/lucky_dragons_-_power_melody.mp3');
}

function setup() {
  createCanvas(710, 200);
  song.loop();

  // create a new Amplitude analyzer
  analyzer = new p5.Amplitude();

  // Patch the input to an volume analyzer
  analyzer.setInput(song);
}

function draw() {
  background(255);

  // Get the average (root mean square) amplitude
  let rms = analyzer.getLevel();
  fill(127);
  stroke(0);

  // Draw an ellipse with size based on volume
  ellipse(width / 2, height / 2, 10 + rms * 200, 10 + rms * 200);
}
