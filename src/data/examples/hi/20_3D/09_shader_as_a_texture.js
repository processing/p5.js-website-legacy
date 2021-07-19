/*
  * @name शेडर एक बनावट के रूप में
  * @description Shaders को बनावट के रूप में 2D/3D आकृतियों पर लागू किया जा सकता है।
  * <br> p5.js में शेडर्स का उपयोग करने के बारे में अधिक जानने के लिए: <a href="https://itp-xstory.github.io/p5js-shaders/">p5.js Shaders</a>
  */

  // यह वेरिएबल हमारे शेडर ऑब्जेक्ट को होल्ड करेगा
 let theShader;
 // यह वेरिएबल हमारी createGraphics लेयर को होल्ड करेगा
 let shaderTexture;

 let theta = 0;

 let x;
 let y;
 let outsideRadius = 200;
 let insideRadius = 100;

 function preload(){
   // शेडर लोड करें
   theShader = loadShader('assets/texture.vert','assets/texture.frag');
 }

 function setup() {
   // शेडर्स को काम करने के लिए WEBGL मोड की आवश्यकता होती है
   createCanvas(710, 400, WEBGL);
   noStroke();

   // createGraphics लेयर्स को इनिशियलाइज़ करें
   shaderTexture = createGraphics(710, 400, WEBGL);

   // createGraphics लेयर्स स्ट्रोक को बंद करें
   shaderTexture.noStroke();

    x = -50;
    y = 0;
 }

 function draw() {

   // केवल सक्रिय शेडर को सेट करने के बजाय हम इसे createGraphics लेयर में पास कर रहे हैं
   shaderTexture.shader(theShader);

   // यहां हम अपने समान मूल्यों को शेडर में भेजने के लिए setUniform () का उपयोग कर रहे हैं
   theShader.setUniform("resolution", [width, height]);
   theShader.setUniform("time", millis() / 1000.0);
   theShader.setUniform("mouse", [mouseX, map(mouseY, 0, height, height, 0)]);

   // रेंडर करने के लिए shaderTexture लेयर ज्योमेट्री पास करना
   shaderTexture.rect(0,0,width,height);

   background(255);

   // शेडर को एक बनावट के रूप में पास करें
   texture(shaderTexture);

   translate(-150, 0, 0);
   push();
   rotateZ(theta * mouseX * 0.0001);
   rotateX(theta * mouseX * 0.0001);
   rotateY(theta * mouseX * 0.0001);
   theta += 0.05;
   sphere(125);
   pop();

   // 3D में चिकने किनारों के लिए दीर्घवृत्त के लिए पाँचवाँ पैरामीटर पास करना
   ellipse(260,0,200,200,100);
 }
