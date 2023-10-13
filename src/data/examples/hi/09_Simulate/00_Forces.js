/*
  * @name बल
  * @description निकायों पर अभिनय करने वाले कई बल का प्रदर्शन
  * (<a href="http://natureofcode.com">natureofcode.com</a>)
  */
// कई बल अभिनय का प्रदर्शन
// निकायों (प्रस्तावक वर्ग)
// शरीर लगातार गुरुत्वाकर्षण का अनुभव करते हैं
// जब "पानी" में निकायों को द्रव प्रतिरोध का अनुभव होता है

// पांच गतिमान पिंड
let movers = [];

// तरल
let liquid;

function setup() {
  createCanvas(640, 360);
  reset();
  // तरल वस्तु बनाएं
  liquid = new Liquid(0, height / 2, width, height / 2, 0.1);
}

function draw() {
  background(127);

  // पानी खींचो
  liquid.display();

  for (let i = 0; i < movers.length; i++) {

    // क्या प्रस्तावक तरल में है?
    if (liquid.contains(movers[i])) {
      // ड्रैग फोर्स की गणना करें
      let dragForce = liquid.calculateDrag(movers[i]);
      // मूवर पर ड्रैग फोर्स लागू करें
      movers[i].applyForce(dragForce);
    }

    // यहाँ द्रव्यमान द्वारा गुरुत्वाकर्षण को बढ़ाया जाता है!
    let gravity = createVector(0, 0.1 * movers[i].mass);
    // गुरुत्वाकर्षण लागू करें
    movers[i].applyForce(gravity);

    // अद्यतन और प्रदर्शित करें
    movers[i].update();
    movers[i].display();
    movers[i].checkEdges();
  }

}


function mousePressed() {
  reset();
}

// सभी मूवर ऑब्जेक्ट को बेतरतीब ढंग से पुनरारंभ करें
function reset() {
  for (let i = 0; i < 9; i++) {
    movers[i] = new Mover(random(0.5, 3), 40 + i * 70, 0);
  }
}

let Liquid = function(x, y, w, h, c) {
  this.x = x;
  this.y = y;
  this.w = w;
  this.h = h;
  this.c = c;
};

// तरल में प्रस्तावक है?
Liquid.prototype.contains = function(m) {
  let l = m.position;
  return l.x > this.x && l.x < this.x + this.w &&
         l.y > this.y && l.y < this.y + this.h;
};

// ड्रैग फोर्स की गणना करें
Liquid.prototype.calculateDrag = function(m) {
  // परिमाण गुणांक है * गति चुकता
  let speed = m.velocity.mag();
  let dragMagnitude = this.c * speed * speed;

  // दिशा वेग के विपरीत है
  let dragForce = m.velocity.copy();
  dragForce.mult(-1);

  // परिमाण के अनुसार पैमाना
  // ड्रैगफोर्स.सेटमैग (ड्रैगमैग्निट्यूड);
  dragForce.normalize();
  dragForce.mult(dragMagnitude);
  return dragForce;
};

Liquid.prototype.display = function() {
  noStroke();
  fill(50);
  rect(this.x, this.y, this.w, this.h);
};

function Mover(m, x, y) {
  this.mass = m;
  this.position = createVector(x, y);
  this.velocity = createVector(0, 0);
  this.acceleration = createVector(0, 0);
}

// न्यूटन का दूसरा नियम: F = M * A
// या ए = एफ / एम
Mover.prototype.applyForce = function(force) {
  let f = p5.Vector.div(force, this.mass);
  this.acceleration.add(f);
};

Mover.prototype.update = function() {
  // त्वरण के अनुसार वेग बदलता है
  this.velocity.add(this.acceleration);
  // स्थिति वेग से बदलती है
  this.position.add(this.velocity);
  // हमें प्रत्येक फ्रेम में त्वरण को साफ करना चाहिए
  this.acceleration.mult(0);
};

Mover.prototype.display = function() {
  stroke(0);
  strokeWeight(2);
  fill(255,127);
  ellipse(this.position.x, this.position.y, this.mass * 16, this.mass * 16);
};

// विंडो के नीचे से बाउंस करें
Mover.prototype.checkEdges = function() {
  if (this.position.y > (height - this.mass * 8)) {
    // नीचे से टकराते समय थोड़ा भीगना
    this.velocity.y *= -0.9;
    this.position.y = (height - this.mass * 8);
  }
};








