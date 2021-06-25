/*
  * @name पहुंच ३
  * @frame 710,400
  * @description हाथ की गणना करके गेंद की स्थिति का अनुसरण करता है
  * atan2 () के साथ कोण। कीथ पीटर्स के कोड के आधार पर।
  */
let numSegments = 8,
  x = [],
  y = [],
  angle = [],
  segLength = 26,
  targetX,
  targetY,
  ballX = 50,
  ballY = 50,
  ballXDirection = 1,
  ballYDirection = -1;

for (let i = 0; i < numSegments; i++) {
  x[i] = 0;
  y[i] = 0;
  angle[i] = 0;
}

function setup() {
  createCanvas(710, 400);
  strokeWeight(20);
  stroke(255, 100);
  noFill();

  x[x.length - 1] = width / 2; // बेस एक्स-कोऑर्डिनेट सेट करें
  y[x.length - 1] = height; // आधार y- निर्देशांक सेट करें
}

function draw() {
  background(0);

  strokeWeight(20);
  ballX = ballX + 1.0 * ballXDirection;
  ballY = ballY + 0.8 * ballYDirection;
  if (ballX > width - 25 || ballX < 25) {
    ballXDirection *= -1;
  }
  if (ballY > height - 25 || ballY < 25) {
    ballYDirection *= -1;
  }
  ellipse(ballX, ballY, 30, 30);

  reachSegment(0, ballX, ballY);
  for (let i = 1; i < numSegments; i++) {
    reachSegment(i, targetX, targetY);
  }
  for (let j = x.length - 1; j >= 1; j--) {
    positionSegment(j, j - 1);
  }
  for (let k = 0; k < x.length; k++) {
    segment(x[k], y[k], angle[k], (k + 1) * 2);
  }
}

function positionSegment(a, b) {
  x[b] = x[a] + cos(angle[a]) * segLength;
  y[b] = y[a] + sin(angle[a]) * segLength;
}

function reachSegment(i, xin, yin) {
  const dx = xin - x[i];
  const dy = yin - y[i];
  angle[i] = atan2(dy, dx);
  targetX = xin - cos(angle[i]) * segLength;
  targetY = yin - sin(angle[i]) * segLength;
}

function segment(x, y, a, sw) {
  strokeWeight(sw);
  push();
  translate(x, y);
  rotate(a);
  line(0, 0, segLength, 0);
  pop();
}
