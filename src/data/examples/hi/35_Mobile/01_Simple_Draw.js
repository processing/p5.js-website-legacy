/*
  * @name सिंपल ड्रा
  * @description mouseX, mouseY, pmouseX, और pmouseY मानों का उपयोग करके स्क्रीन पर ड्रा करने के लिए स्पर्श करें।
  */

function setup() {
  createCanvas(displayWidth, displayHeight);
  strokeWeight(10);
  stroke(0);
}

function touchMoved() {
  line(mouseX, mouseY, pmouseX, pmouseY);
  return false;
}
