/*
  * @name वसंत
  * @frame 710, 400
  * @description वसंत शुरू करने के लिए क्षैतिज पट्टी पर क्लिक करें, खींचें और छोड़ें।
  */
// शीर्ष बार के लिए स्प्रिंग ड्राइंग स्थिरांक
let springHeight = 32,
    left,
    right,
    maxHeight = 200,
    minHeight = 100,
    over = false,
    move = false;

// स्प्रिंग सिमुलेशन स्थिरांक
let M = 0.8,  // द्रव्यमान
    K = 0.2,  // वसंत निरंतर
    D = 0.92, // भिगोना
    R = 150;  // स्थिति को विश्राम दें

// स्प्रिंग सिमुलेशन चर
let ps = R,   // पद
    vs = 0.0, // वेग
    as = 0,   // त्वरण
    f = 0;    // बल

function setup() {
  createCanvas(710, 400);
  rectMode(CORNERS);
  noStroke();
  left = width / 2 - 100;
  right = width / 2 + 100;
}

function draw() {
  background(102);
  updateSpring();
  drawSpring();
}

function drawSpring() {
  // ड्रा बेस
  fill(0.2);
  let baseWidth = 0.5 * ps + -8;
  rect(width / 2 - baseWidth, ps + springHeight, width / 2 + baseWidth, height);

 // रंग सेट करें और शीर्ष पट्टी बनाएं
  if (over || move) {
    fill(255);
  } else {
    fill(204);
  }

  rect(left, ps, right, ps + springHeight);
}

function updateSpring() {
  // वसंत की स्थिति को अपडेट करें
  if ( !move ) {
    f = -K * ( ps - R ); // f=-ky
    as = f / M;          // त्वरण सेट करें, f=ma == a=f/m
    vs = D * (vs + as);  // वेग सेट करें
    ps = ps + vs;        // अद्यतन स्थिति
  }

  if (abs(vs) < 0.1) {
    vs = 0.0;
  }

  // परीक्षण करें कि क्या माउस शीर्ष बार पर है
  if (mouseX > left && mouseX < right && mouseY > ps && mouseY < ps + springHeight) {
    over = true;
  } else {
    over = false;
  }

  // शीर्ष बार की स्थिति को सेट और विवश करें
  if (move) {
    ps = mouseY - springHeight / 2;
    ps = constrain(ps, minHeight, maxHeight);
  }
}

function mousePressed() {
  if (over) {
    move = true;
  }
}

function mouseReleased() {
  move = false;
}
