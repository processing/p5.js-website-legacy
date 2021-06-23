/*
  * @name Noise3D
  * @frame 710,400 (वैकल्पिक)
  * @description सरल एनिमेटेड बनावट बनाने के लिए 3D शोर का उपयोग करना।
  */

let noiseVal;
// वृद्धि x 0.01
let x_increment = 0.01;
// प्रत्येक draw() चक्र में ०.०२ से z बढ़ाएँ
let z_increment = 0.02;

// ऑफसेट मान
let z_off, y_off, x_off;

function setup() {
  // कैनवास बनाएं
  createCanvas(640, 360);
  // फ्रेम दर को परिभाषित करें
  frameRate(20);
  // z_off का प्रारंभिक मान
  z_off = 0;
}

function draw() {
  x_off = 0;
  y_off = 0;
  // बैकग्राउंड को काला करें
  background(0);
  // नोटिस विवरण समायोजित करें
  noiseDetail(8, 0.65);

  // प्रत्येक x, y के लिए नोइस मान की गणना करें
  for (let y = 0; y < height; y++) {
    x_off += x_increment;
    y_off = 0;

    for (let x = 0; x < width; x++) {
      // प्रत्येक पिक्सेल की गणना और ड्रा करें
      noiseVal = noise(x_off, y_off, z_off);
      stroke(noiseVal * 255);
      y_off += x_increment;
      point(x, y);
    }
  }

  z_off += z_increment;
}
