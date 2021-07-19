/*
  * @name रैंडम कॉर्ड्स
  * @description एक वृत्त की यादृच्छिक जीवाओं को संचित करता है। पारभासी में प्रत्येक राग
  * इसलिए वे एक छायांकित गोले का भ्रम देने के लिए जमा होते हैं।
  * आतिश भाटिया द्वारा योगदान, <a href ="http://inconvergent.net/">एंडर्स हॉफ</a> से प्रेरित
  */

function setup() {
  createCanvas(400, 400);
  background(255, 255, 255);

  // अल्फा मान का उपयोग करके पारभासी स्ट्रोक
  stroke(0, 0, 0, 15);
}

function draw() {
  // प्रत्येक फ्रेम में दो यादृच्छिक तार बनाएं
  randomChord();
  randomChord();
}

function randomChord() {
  // एक सर्कल पर एक यादृच्छिक बिंदु खोजें
  let angle1 = random(0, 2 * PI);
  let xpos1 = 200 + 200 * cos(angle1);
  let ypos1 = 200 + 200 * sin(angle1);

  // सर्कल पर एक और यादृच्छिक बिंदु खोजें
  let angle2 = random(0, 2 * PI);
  let xpos2 = 200 + 200 * cos(angle2);
  let ypos2 = 200 + 200 * sin(angle2);

  // उनके बीच एक रेखा खींचें
  line(xpos1, ypos1, xpos2, ypos2);
}
