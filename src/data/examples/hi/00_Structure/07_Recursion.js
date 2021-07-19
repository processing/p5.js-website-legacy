/*
  *@name रिकर्सन
  *@description रिकर्सन का एक प्रदर्शन, जिसका अर्थ है कि फ़ंक्शन स्वयं को कॉल करते हैं।
  * ध्यान दें कि कैसे drawCircle () फ़ंक्शन अपने ब्लॉक के अंत में खुद को कॉल करता है।
  * यह तब तक करना जारी रखता है जब तक कि चर "स्तर" 1 के बराबर न हो जाए।
  */

function setup() {
  createCanvas(720, 560);
  noStroke();
  noLoop();
}

function draw() {
  drawCircle(width / 2, 280, 6);
}

function drawCircle(x, radius, level) {
  const tt = (126 * level) / 4.0;
  fill(tt);
  ellipse(x, height / 2, radius * 2, radius * 2);
  if (level > 1) {
    level = level - 1;
    drawCircle(x - radius / 2, radius / 2, level);
    drawCircle(x + radius / 2, radius / 2, level);
  }
}
