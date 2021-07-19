/*
  *@name त्रिभुज पट्टी
  * @description उदाहरण इरा ग्रीनबर्ग द्वारा। का उपयोग करके एक बंद रिंग उत्पन्न करें
  * vertex() फ़ंक्शन और beginShape (TRIANGLE_STRIP) मोड। बाहरी त्रिज्या
  * और इनसाइडरेडियस वेरिएबल्स क्रमशः रिंग की त्रिज्या को नियंत्रित करते हैं।
  */
let x;
let y;
let outsideRadius = 150;
let insideRadius = 100;

function setup() {
  createCanvas(720, 400);
  background(204);
  x = width / 2;
  y = height / 2;
}

function draw() {
  background(204);

  let numPoints = int(map(mouseX, 0, width, 6, 60));
  let angle = 0;
  let angleStep = 180.0 / numPoints;

  beginShape(TRIANGLE_STRIP);
  for (let i = 0; i <= numPoints; i++) {
    let px = x + cos(radians(angle)) * outsideRadius;
    let py = y + sin(radians(angle)) * outsideRadius;
    angle += angleStep;
    vertex(px, py);
    px = x + cos(radians(angle)) * insideRadius;
    py = y + sin(radians(angle)) * insideRadius;
    vertex(px, py);
    angle += angleStep;
  }
  endShape();
}
