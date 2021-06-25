/*
  * @name छोड़ देना
  * @description आपको शामिल करना होगा
  * <a href="http://p5js.org/reference/#/libraries/p5.dom">p5.dom लाइब्रेरी</a>
  * इस उदाहरण के लिए अपने स्वयं के प्रोजेक्ट में काम करने के लिए।<br><br>
  * एक छवि फ़ाइल को प्रदर्शित करने के लिए उसे कैनवास पर खींचें।
  */

function setup() {
  // कैनवास बनाएं
  const c = createCanvas(710, 400);
  background(100);
  // जब कोई फ़ाइल कैनवास पर गिराई जाती है, तो उसके लिए एक ईवेंट जोड़ें
  c.drop(gotFile);
}

function draw() {
  fill(255);
  noStroke();
  textSize(24);
  textAlign(CENTER);
  text('Drag an image file onto the canvas.', width / 2, height / 2);
  noLoop();
}

function gotFile(file) {
  // यदि यह एक छवि फ़ाइल है
  if (file.type === 'image') {
    // एक छवि DOM तत्व बनाएं, लेकिन इसे न दिखाएं
    const img = createImg(file.data).hide();
    // कैनवास पर चित्र बनाएं
    image(img, 0, 0, width, height);
  } else {
    console.log('Not an image file!');
  }
}
