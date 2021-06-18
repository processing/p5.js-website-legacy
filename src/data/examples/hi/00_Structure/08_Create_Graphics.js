/*
  * @name ग्राफिक्स बनाएं
  * @description एक नया p5.Renderer ऑब्जेक्ट बनाता और लौटाता है। इस का उपयोग करें
  * वर्ग यदि आपको ऑफ-स्क्रीन ग्राफिक्स बफर में आकर्षित करने की आवश्यकता है। दो पैरामीटर
  * पिक्सल में चौड़ाई और ऊंचाई को परिभाषित करें।
  */

let pg;

function setup() {
  createCanvas(710, 400);
  pg = createGraphics(400, 250);
}

function draw() {
  fill(0, 12);
  rect(0, 0, width, height);
  fill(255);
  noStroke();
  ellipse(mouseX, mouseY, 60, 60);

  pg.background(51);
  pg.noFill();
  pg.stroke(255);
  pg.ellipse(mouseX - 150, mouseY - 75, 60, 60);

  //Draw the offscreen buffer to the screen with image()
  image(pg, 150, 75);
}
