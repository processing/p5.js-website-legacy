/*
  * @name डबल रैंडम
  * @frame 720,400 (वैकल्पिक)
  * @description दो random() कॉल और point() का उपयोग करना
  * अनियमित चूरा रेखा बनाने का कार्य।
  * मूल ईरा ग्रीनबर्ग द्वारा।
  */
let totalPts = 300;
let steps = totalPts + 1;

function setup() {
  createCanvas(710, 400);
  stroke(255);
  frameRate(1);
}

function draw() {
  background(0);
  let rand = 0;
  for (let i = 1; i < steps; i++) {
    point((width / steps) * i, height / 2 + random(-rand, rand));
    rand += random(-5, 5);
  }
}
