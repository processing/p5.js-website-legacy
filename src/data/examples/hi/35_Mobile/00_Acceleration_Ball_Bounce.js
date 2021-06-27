/*
  * @name एक्सेलेरेशन बॉल बाउंस
  * @description त्वरणX और त्वरणY मानों के आधार पर एक दीर्घवृत्त को इधर-उधर घुमाएँ, और कैनवास के किनारे को छूने पर उछलता है।
  */

// स्थिति चर
let x = 0;
let y = 0;

// गति वेग
let vx = 0;
let vy = 0;

// त्वरण
let ax = 0;
let ay = 0;

let vMultiplier = 0.007;
let bMultiplier = 0.6;

function setup() {
  createCanvas(displayWidth, displayHeight);
  fill(0);
}

function draw() {
  background(255);
  ballMove();
  ellipse(x, y, 30, 30);
}

function ballMove() {
  ax = accelerationX;
  ay = accelerationY;

  vx = vx + ay;
  vy = vy + ax;
  y = y + vy * vMultiplier;
  x = x + vx * vMultiplier;

  // कैनवास के किनारे को छूने पर उछलें
  if (x < 0) {
    x = 0;
    vx = -vx * bMultiplier;
  }
  if (y < 0) {
    y = 0;
    vy = -vy * bMultiplier;
  }
  if (x > width - 20) {
    x = width - 20;
    vx = -vx * bMultiplier;
  }
  if (y > height - 20) {
    y = height - 20;
    vy = -vy * bMultiplier;
  }
}
