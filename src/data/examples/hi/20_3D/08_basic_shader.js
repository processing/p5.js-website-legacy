/*
  * @name बेसिक शेडर
  * @description यह एक बुनियादी उदाहरण है जिसमें दिखाया गया है कि p5.js में शेडर्स को कैसे लोड किया जाए।
  * <br> p5.js में शेडर्स का उपयोग करने के बारे में अधिक जानने के लिए: <a href="https://itp-xstory.github.io/p5js-shaders/">p5.js Shaders</a>
  */

// यह वेरिएबल हमारे शेडर ऑब्जेक्ट को होल्ड करेगा
let theShader;

function preload(){
  // शेडर लोड करें
  theShader = loadShader('assets/basic.vert', 'assets/basic.frag');
}

function setup() {
  // शेडर्स को काम करने के लिए WEBGL मोड की आवश्यकता होती है
  createCanvas(710, 400, WEBGL);
  noStroke();
}

function draw() {
  // shader() हमारे शेडर के साथ सक्रिय शेडर सेट करता है
  shader(theShader);

  // रेक्ट हमें स्क्रीन पर कुछ ज्योमेट्री देता है
  rect(0,0,width, height);
}
