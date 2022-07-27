/*
  * @name Shader वेबकैम का उपयोग कर रहा है
  * @description वेबकैम को टेक्सचर के रूप में शेडर्स को पास किया जा सकता है।
  * <br> p5.js में शेडर्स का उपयोग करने के बारे में अधिक जानने के लिए: <a href="https://itp-xstory.github.io/p5js-shaders/">p5.js Shaders</a>
  */

 // यह वेरिएबल हमारे शेडर ऑब्जेक्ट को होल्ड करेगा
 let theShader;
 // यह वेरिएबल हमारे वेबकैम वीडियो को होल्ड करेगा
 let cam;

 function preload(){
   // शेडर लोड करें
   theShader = loadShader('assets/webcam.vert', 'assets/webcam.frag');
 }

 function setup() {
   // शेडर्स को काम करने के लिए WEBGL मोड की आवश्यकता होती है
   createCanvas(710, 400, WEBGL);
   noStroke();

   cam = createCapture(VIDEO);
   cam.size(710, 400);

   cam.hide();
 }

 function draw() {
   // shader() हमारे शेडर के साथ सक्रिय शेडर सेट करता है
   shader(theShader);

   // एक बनावट के रूप में कैम पास करना
   theShader.setUniform('tex0', cam);

   // रेक्ट हमें स्क्रीन पर कुछ ज्योमेट्री देता है
   rect(0,0,width,height);
 }
