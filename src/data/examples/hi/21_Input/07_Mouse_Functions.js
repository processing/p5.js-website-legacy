/*
  * @name माउस फंक्शन्स
  * @description बॉक्स पर क्लिक करें और इसे स्क्रीन पर खींचें।
  */
let bx;
let by;
let boxSize = 75;
let overBox = false;
let locked = false;
let xOffset = 0.0;
let yOffset = 0.0;

function setup() {
  createCanvas(720, 400);
  bx = width / 2.0;
  by = height / 2.0;
  rectMode(RADIUS);
  strokeWeight(2);
}

function draw() {
  background(237, 34, 93);

  // परीक्षण करें कि क्या कर्सर बॉक्स के ऊपर है
  if (
    mouseX > bx - boxSize &&
    mouseX < bx + boxSize &&
    mouseY > by - boxSize &&
    mouseY < by + boxSize
  ) {
    overBox = true;
    if (!locked) {
      stroke(255);
      fill(244, 122, 158);
    }
  } else {
    stroke(156, 39, 176);
    fill(244, 122, 158);
    overBox = false;
  }

  // बॉक्स को ड्रा करें
  rect(bx, by, boxSize, boxSize);
}

function mousePressed() {
  if (overBox) {
    locked = true;
    fill(255, 255, 255);
  } else {
    locked = false;
  }
  xOffset = mouseX - bx;
  yOffset = mouseY - by;
}

function mouseDragged() {
  if (locked) {
    bx = mouseX - xOffset;
    by = mouseY - yOffset;
  }
}

function mouseReleased() {
  locked = false;
}
