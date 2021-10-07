/*
  * @name साइन कोसाइन
  * @description लीनियर मूवमेंट विथ sin() और cos()।
  * 0 और PI*2 के बीच की संख्या (TWO_PI जिसका कोण लगभग 6.28 है)
  * इन कार्यों में डाल दिया जाता है और -1 और 1 के बीच की संख्या वापस कर दी जाती है।
  * इन मूल्यों को तब बड़े आंदोलनों का उत्पादन करने के लिए बढ़ाया जाता है।
  */
let angle1 = 0;
let angle2 = 0;
let scalar = 70;

function setup() {
  createCanvas(710, 400);
  noStroke();
  rectMode(CENTER);
}

function draw() {
  background(0);

  let ang1 = radians(angle1);
  let ang2 = radians(angle2);

  let x1 = width / 2 + scalar * cos(ang1);
  let x2 = width / 2 + scalar * cos(ang2);

  let y1 = height / 2 + scalar * sin(ang1);
  let y2 = height / 2 + scalar * sin(ang2);

  fill(255);
  rect(width * 0.5, height * 0.5, 140, 140);

  fill(0, 102, 153);
  ellipse(x1, height * 0.5 - 120, scalar, scalar);
  ellipse(x2, height * 0.5 + 120, scalar, scalar);

  fill(255, 204, 0);
  ellipse(width * 0.5 - 120, y1, scalar, scalar);
  ellipse(width * 0.5 + 120, y2, scalar, scalar);

  angle1 += 2;
  angle2 += 3;
}
