/*
  * @name फॉलो 2
  * @frame 710,400
  * @description दो खंडों वाली भुजा कर्सर की स्थिति का अनुसरण करती है। संबंधी
  * खंडों के बीच के कोण की गणना atan2 () और स्थिति के साथ की जाती है
  * sin() और cos() के साथ गणना की गई। कीथ पीटर्स के कोड के आधार पर।
  */
let x = [0, 0],
  y = [0, 0],
  segLength = 50;

function setup() {
  createCanvas(710, 400);
  strokeWeight(20.0);
  stroke(255, 100);
}

function draw() {
  background(0);
  dragSegment(0, mouseX, mouseY);
  dragSegment(1, x[0], y[0]);
}

function dragSegment(i, xin, yin) {
  const dx = xin - x[i];
  const dy = yin - y[i];
  const angle = atan2(dy, dx);
  x[i] = xin - cos(angle) * segLength;
  y[i] = yin - sin(angle) * segLength;
  segment(x[i], y[i], angle);
}

function segment(x, y, a) {
  push();
  translate(x, y);
  rotate(a);
  line(0, 0, segLength, 0);
  pop();
}
