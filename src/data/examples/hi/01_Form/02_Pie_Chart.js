/*
  * @name पाई चार्ट
  * @description डेटा से पाई चार्ट बनाने के लिए arc() फ़ंक्शन का उपयोग करता है
  * एक सरणी में संग्रहीत।
  */
let angles = [30, 10, 45, 35, 60, 38, 75, 67];

function setup() {
  createCanvas(720, 400);
  noStroke();
  noLoop(); // एक बार दौड़ें और रुकें
}

function draw() {
  background(100);
  pieChart(300, angles);
}

function pieChart(diameter, data) {
  let lastAngle = 0;
  for (let i = 0; i < data.length; i++) {
    let gray = map(i, 0, data.length, 0, 255);
    fill(gray);
    arc(
      width / 2,
      height / 2,
      diameter,
      diameter,
      lastAngle,
      lastAngle + radians(angles[i])
    );
    lastAngle += radians(angles[i]);
  }
}
