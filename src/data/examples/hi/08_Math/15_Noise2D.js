/*
  * @name Noise2D
  * @frame 710,400 (वैकल्पिक)
  * @description विभिन्न मापदंडों के साथ एक 2D शोर बनाएँ।
  *
  */
let noiseVal;
let noiseScale = 0.02;

function setup() {
  createCanvas(640, 360);
}

function draw() {
  background(0);
  // छवि का बायां आधा भाग बनाएं
  for (let y = 0; y < height - 30; y++) {
    for (let x = 0; x < width / 2; x++) {
      // पिक्सल ऑक्टेव काउंट और फॉलऑफ वैल्यू का noiceDetail
      noiseDetail(2, 0.2);
      noiseVal = noise((mouseX + x) * noiseScale, (mouseY + y) * noiseScale);
      stroke(noiseVal * 255);
      point(x, y);
    }
  }
  // छवि का दाहिना आधा भाग बनाएं
  for (let y = 0; y < height - 30; y++) {
    for (let x = width / 2; x < width; x++) {
     // पिक्सल ऑक्टेव काउंट और फॉलऑफ वैल्यू का noiceDetail
      noiseDetail(5, 0.5);
      noiseVal = noise((mouseX + x) * noiseScale, (mouseY + y) * noiseScale);
      stroke(noiseVal * 255);
      point(x, y);
    }
  }
  // दो विभाजनों का विवरण दिखाएं
  textSize(18);
  fill(255, 255, 255);
  text('Noice2D with 2 octaves and 0.2 falloff', 10, 350);
  text('Noice2D with 1 octaves and 0.7 falloff', 330, 350);
}
