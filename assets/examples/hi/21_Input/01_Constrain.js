/*
  * @name बाधा
  * @description माउस को स्क्रीन पर घुमाने के लिए ले जाएँ
  * वृत्त। कार्यक्रम सर्कल को उसके बॉक्स में सीमित करता है।
  */
let mx = 1;
let my = 1;
let easing = 0.05;
let radius = 24;
let edge = 100;
let inner = edge + radius;

function setup() {
  createCanvas(720, 400);
  noStroke();
  ellipseMode(RADIUS);
  rectMode(CORNERS);
}

function draw() {
  background(230);

  if (abs(mouseX - mx) > 0.1) {
    mx = mx + (mouseX - mx) * easing;
  }
  if (abs(mouseY - my) > 0.1) {
    my = my + (mouseY - my) * easing;
  }

  mx = constrain(mx, inner, width - inner);
  my = constrain(my, inner, height - inner);
  fill(237, 34, 93);
  rect(edge, edge, width - edge, height - edge);
  fill(255);
  ellipse(mx, my, radius, radius);
}
