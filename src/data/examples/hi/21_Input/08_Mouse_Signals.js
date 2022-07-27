/*
  * @name माउस सिग्नल
  * @description सिग्नल जेनरेट करने के लिए माउस को मूव करें और क्लिक करें।
  * शीर्ष पंक्ति "माउसएक्स" से संकेत है, मध्य पंक्ति है
  * "माउसवाई" से संकेत, और नीचे की पंक्ति संकेत है
  * "mouseIsPressed" से।
  */
let xvals = [];
let yvals = [];
let bvals = [];

function setup() {
  createCanvas(720, 400);
  strokeWeight(2);
}

function draw() {
  background(237, 34, 93);

  for (let i = 1; i < width; i++) {
    xvals[i - 1] = xvals[i];
    yvals[i - 1] = yvals[i];
    bvals[i - 1] = bvals[i];
  }
  // सरणी के अंत में नए मान जोड़ें
  xvals[width - 1] = mouseX;
  yvals[width - 1] = mouseY;

  if (mouseIsPressed) {
    bvals[width - 1] = 0;
  } else {
    bvals[width - 1] = 255;
  }

  fill(255);
  noStroke();
  rect(0, height / 3, width, height / 3 + 1);

  for (let i = 1; i < width; i++) {
    stroke(255);
    point(i, xvals[i] / 3);
    stroke(0);
    point(i, height / 3 + yvals[i] / 3);
    stroke(255);
    line(
      i,
      (2 * height) / 3 + bvals[i] / 3,
      i,
      (2 * height) / 3 + bvals[i - 1] / 3
    );
  }
}
