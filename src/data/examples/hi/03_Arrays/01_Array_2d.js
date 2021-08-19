/*
  * @name ऐरे 2D
  * @description द्वि-आयामी (2D) बनाने के लिए सिंटैक्स प्रदर्शित करता है
  * सरणी। 2D सरणी में मानों को दो अनुक्रमणिका मानों के माध्यम से एक्सेस किया जाता है।
  * 2D सरणियाँ छवियों को संग्रहीत करने के लिए उपयोगी हैं। इस उदाहरण में, प्रत्येक बिंदु
  * छवि के केंद्र से इसकी दूरी के संबंध में रंगीन है।
  */
let distances = [];
let maxDistance;
let spacer;

function setup() {
  createCanvas(720, 360);
  maxDistance = dist(width / 2, height / 2, width, height);
  for (let x = 0; x < width; x++) {
    distances[x] = []; // create nested array
    for (let y = 0; y < height; y++) {
      let distance = dist(width / 2, height / 2, x, y);
      distances[x][y] = (distance / maxDistance) * 255;
    }
  }
  spacer = 10;
  noLoop(); // Run once and stop
}

function draw() {
  background(0);
   // यह एम्बेडेड लूप के आधार पर सरणियों में मूल्यों पर छोड़ देता है
   // स्पेसर चर, इसलिए सरणी में अधिक मान हैं
   // यहाँ से खींचे गए हैं। स्पेसर वैरिएबल का मान बदलें of
   // बिंदुओं के घनत्व को बदलने के लिए
  for (let x = 0; x < width; x += spacer) {
    for (let y = 0; y < height; y += spacer) {
      stroke(distances[x][y]);
      point(x + spacer / 2, y + spacer / 2);
    }
  }
}
