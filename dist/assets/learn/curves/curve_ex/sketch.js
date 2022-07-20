let x1 = 80;
let y1 = 80;
let x2 = 160;
let y2 = 120;
let x3 = 200;
let y3 = 200;
let x4 = 120;
let y4 = 240;
let d1 = false;
let d2 = false;
let d4 = false;
let d3 = false;
let d5 = false;

function setup() {
  createCanvas(300, 300);
}

function draw() {
  background(255);
  stroke(0);
  curve(x1, y1, x2, y2, x3, y3, x4, y4);
  noStroke();
  fill(255, 0, 0);
  ellipse(x1, y1, 10, 10);
  fill(0, 0, 255, 192);
  ellipse(x3, y3, 10, 10);
  ellipse(x2, y2, 10, 10);
  fill(255, 0, 0);
  ellipse(x4, y4, 10, 10);

  noStroke();
  text('(' + x1 + ',' + y1 + ')', x1, y1);
  text('(' + x2 + ',' + y2 + ')', x2, y2);
  text('(' + x3 + ',' + y3 + ')', x3, y3);
  text('(' + x4 + ',' + y4 + ')', x4, y4);

  if (d1) {
    x1 = mouseX;
    y1 = mouseY;
  }
  if (d2) {
    x2 = mouseX;
    y2 = mouseY;
  }
  if (d3) {
    x3 = mouseX;
    y3 = mouseY;
  }
  if (d4) {
    x4 = mouseX;
    y4 = mouseY;
  }
}

function mouseDragged() {
  if (dist(mouseX, mouseY, x1, y1) < 10) {
    d1 = true;
  }
  if (dist(mouseX, mouseY, x2, y2) < 10) {
    d2 = true;
  }
  if (dist(mouseX, mouseY, x3, y3) < 10) {
    d3 = true;
  }
  if (dist(mouseX, mouseY, x4, y4) < 10) {
    d4 = true;
  }
  if (dist(mouseX, mouseY, x5, y5) < 10) {
    d5 = true;
  }
}

function mouseReleased() {
  d1 = false;
  d2 = false;
  d3 = false;
  d4 = false;
  d5 = false;
}
