/*
  *@name कार्य
  *@description DrawTarget () फ़ंक्शन कई अलग-अलग आकर्षित करना आसान बनाता है
  *लक्ष्य। DrawTarget () के लिए प्रत्येक कॉल की स्थिति, आकार और संख्या निर्दिष्ट करता है
  * प्रत्येक लक्ष्य के लिए बजता है।
  */

function setup() {
  createCanvas(720, 400);
  background(51);
  noStroke();
  noLoop();
}

function draw() {
  drawTarget(width * 0.25, height * 0.4, 200, 4);
  drawTarget(width * 0.5, height * 0.5, 300, 10);
  drawTarget(width * 0.75, height * 0.3, 120, 6);
}

function drawTarget(xloc, yloc, size, num) {
  const grayvalues = 255 / num;
  const steps = size / num;
  for (let i = 0; i < num; i++) {
    fill(i * grayvalues);
    ellipse(xloc, yloc, size - i * steps, size - i * steps);
  }
}
