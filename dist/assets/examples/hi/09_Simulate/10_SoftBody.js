/*
  * @name शीतल शरीर
  * @description इरा ग्रीनबर्ग द्वारा मूल उदाहरण।
  * <br><br>कर्ववर्टेक्स () और कर्वटाइटनेस () का उपयोग करके सॉफ्टबॉडी डायनेमिक्स सिमुलेशन।
  */
// केंद्र बिंदु
let centerX = 0.0, centerY = 0.0;

let radius = 45, rotAngle = -90;
let accelX = 0.0, accelY = 0.0;
let deltaX = 0.0, deltaY = 0.0;
let springing = 0.0009, damping = 0.98;

// कोने के नोड्स
let nodes = 5;

// शून्य भरण सरणियाँ
let nodeStartX = [];
let nodeStartY = [];
let nodeX = [];
let nodeY = [];
let angle = [];
let frequency = [];

// सॉफ्ट-बॉडी डायनामिक्स
let organicConstant = 1.0;

function setup() {
  createCanvas(710, 400);

 // विंडो में केंद्र का आकार
  centerX = width / 2;
  centerY = height / 2;

  // सरणियों को 0 . पर इनिशियलाइज़ करें
  for (let i = 0; i < nodes; i++){
    nodeStartX[i] = 0;
    nodeStartY[i] = 0;
    nodeY[i] = 0;
    nodeY[i] = 0;
    angle[i] = 0;
  }

 // कोने के नोड्स के लिए आवृत्तियों को प्रारंभ करें
  for (let i = 0; i < nodes; i++){
    frequency[i] = random(5, 12);
  }

  noStroke();
  frameRate(30);
}

function draw() {
  // फीका पृष्ठभूमि
  fill(0, 100);
  rect(0, 0, width, height);
  drawShape();
  moveShape();
}

function drawShape() {
  // नोड के शुरुआती स्थानों की गणना करें
  for (let i = 0; i < nodes; i++){
    nodeStartX[i] = centerX + cos(radians(rotAngle)) * radius;
    nodeStartY[i] = centerY + sin(radians(rotAngle)) * radius;
    rotAngle += 360.0 / nodes;
  }

  // बहुभुज बनाएं
  curveTightness(organicConstant);
  fill(255);
  beginShape();
  for (let i = 0; i < nodes; i++){
    curveVertex(nodeX[i], nodeY[i]);
  }
  for (let i = 0; i < nodes-1; i++){
    curveVertex(nodeX[i], nodeY[i]);
  }
  endShape(CLOSE);
}

function moveShape() {
  // केंद्र बिंदु ले जाएँ
  deltaX = mouseX - centerX;
  deltaY = mouseY - centerY;

  // स्प्रिंग इफेक्ट बनाएं
  deltaX *= springing;
  deltaY *= springing;
  accelX += deltaX;
  accelY += deltaY;

  // शिकारी के केंद्र को स्थानांतरित करें
  centerX += accelX;
  centerY += accelY;

  // स्प्रिंगिंग को धीमा करें
  accelX *= damping;
  accelY *= damping;

  // वक्र की जकड़न बदलें
  organicConstant = 1 - ((abs(accelX) + abs(accelY)) * 0.1);

  // नोड्स ले जाएँ
  for (let i = 0; i < nodes; i++){
    nodeX[i] = nodeStartX[i] + sin(radians(angle[i])) * (accelX * 2);
    nodeY[i] = nodeStartY[i] + sin(radians(angle[i])) * (accelY * 2);
    angle[i] += frequency[i];
  }
}
