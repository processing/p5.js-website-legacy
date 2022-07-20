/*
  * @name पासिंग शेडर यूनिफॉर्म
  * @description यूनिफ़ॉर्म वह तरीका है जिससे जानकारी को p5 से शेडर तक पहुँचाया जाता है।
  * <br> p5.js में शेडर्स का उपयोग करने के बारे में अधिक जानने के लिए: <a href="https://itp-xstory.github.io/p5js-shaders/">p5.js Shaders</a>
  */

  // यह वेरिएबल हमारे शेडर ऑब्जेक्ट को होल्ड करेगा
 let theShader;

 function preload(){
   // शेडर लोड करें
   theShader = loadShader('assets/uniforms.vert', 'assets/uniforms.frag');
 }

 function setup() {
  // शेडर्स को काम करने के लिए WEBGL मोड की आवश्यकता होती है
   createCanvas(710, 400, WEBGL);
   noStroke();
 }

 function draw() {
   // शेडर () हमारे शेडर के साथ सक्रिय शेडर सेट करता है
   shader(theShader);

    // हमारे शेडर को रिज़ॉल्यूशन, माउस और समय भेजें
    // माउस + समय भेजने से पहले हम डेटा को संशोधित करते हैं ताकि यह शेडर द्वारा अधिक आसानी से उपयोग किया जा सके
   theShader.setUniform('resolution', [width, height]);
   theShader.setUniform('mouse', map(mouseX, 0, width, 0, 7));
   theShader.setUniform('time', frameCount * 0.01);

   // रेक्ट हमें स्क्रीन पर कुछ ज्योमेट्री देता है
   rect(0,0,width, height);
 }
