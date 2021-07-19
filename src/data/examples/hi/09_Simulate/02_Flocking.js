/*
  * @name झुंड
  * @description क्रेग रेनॉल्ड्स के "झुंड" व्यवहार का प्रदर्शन।
  * देखें: http://www.red3d.com/cwr/
  * नियम: सामंजस्य, पृथक्करण, संरेखण
  * (<a href="http://natureofcode.com">natureofcode.com</a> से)।
  * सिस्टम में बोड्स जोड़ने के लिए माउस को ड्रैग करें।
  */


let flock;

function setup() {
  createCanvas(640, 360);
  createP("Drag the mouse to generate new boids.");

  flock = new Flock();
  // सिस्टम में बोलियों का एक प्रारंभिक सेट जोड़ें
  for (let i = 0; i < 100; i++) {
    let b = new Boid(width / 2,height / 2);
    flock.addBoid(b);
  }
}

function draw() {
  background(51);
  flock.run();
}

// सिस्टम में एक नया बोड जोड़ें
function mouseDragged() {
  flock.addBoid(new Boid(mouseX, mouseY));
}

// कोड की प्रकृति
// डैनियल शिफमैन
// http://natureofcode.com

// झुंड वस्तु
// बहुत कम करता है, बस सभी बोलियों की सरणी का प्रबंधन करता है

function Flock() {
  // सभी बोलियों के लिए एक सरणी
  this.boids = []; // सरणी को इनिशियलाइज़ करें
}

Flock.prototype.run = function() {
  for (let i = 0; i < this.boids.length; i++) {
    this.boids[i].run(this.boids);  // प्रत्येक बोली को व्यक्तिगत रूप से बोलियों की पूरी सूची पास करना
  }
}

Flock.prototype.addBoid = function(b) {
  this.boids.push(b);
}

// कोड की प्रकृति
// डैनियल शिफमैन
// http://natureofcode.com

// बोएड क्लास
// पृथक्करण, सामंजस्य, संरेखण के तरीके जोड़े गए

function Boid(x, y) {
  this.acceleration = createVector(0, 0);
  this.velocity = createVector(random(-1, 1), random(-1, 1));
  this.position = createVector(x, y);
  this.r = 3.0;
  this.maxspeed = 3;    // अधिकतम गति
  this.maxforce = 0.05; // अधिकतम स्टीयरिंग बल
}

Boid.prototype.run = function(boids) {
  this.flock(boids);
  this.update();
  this.borders();
  this.render();
}

Boid.prototype.applyForce = function(force) {
  // यदि हम A = F / M . चाहते हैं तो हम यहाँ द्रव्यमान जोड़ सकते हैं
  this.acceleration.add(force);
}

// हम हर बार तीन नियमों के आधार पर एक नया त्वरण जमा करते हैं
Boid.prototype.flock = function(boids) {
  let sep = this.separate(boids);   // पृथक्करण
  let ali = this.align(boids);      // संरेखण
  let coh = this.cohesion(boids);   // सामंजस्य
  // मनमाने ढंग से इन ताकतों को तौलें
  sep.mult(1.5);
  ali.mult(1.0);
  coh.mult(1.0);
  // बल वैक्टर को त्वरण में जोड़ें
  this.applyForce(sep);
  this.applyForce(ali);
  this.applyForce(coh);
}

// स्थान अपडेट करने की विधि
Boid.prototype.update = function() {
  // वेग अपडेट करें
  this.velocity.add(this.acceleration);
  // सीमा गति
  this.velocity.limit(this.maxspeed);
  this.position.add(this.velocity);
 // त्वरण को प्रत्येक चक्र में 0 पर रीसेट करें
  this.acceleration.mult(0);
}

// एक विधि जो एक लक्ष्य की ओर एक स्टीयरिंग बल की गणना और लागू करती है
// स्टीयर = वांछित माइनस वेलोसिटी
Boid.prototype.seek = function(target) {
  let desired = p5.Vector.sub(target,this.position); // स्थान से लक्ष्य की ओर इशारा करते हुए एक वेक्टर
  // वांछित और स्केल को अधिकतम गति के लिए सामान्यीकृत करें
  desired.normalize();
  desired.mult(this.maxspeed);
 // संचालन = वांछित शून्य वेग
  let steer = p5.Vector.sub(desired,this.velocity);
  steer.limit(this.maxforce);  // अधिकतम स्टीयरिंग बल तक सीमित करें
  return steer;
}

Boid.prototype.render = function() {
  // वेग की दिशा में घुमाया गया एक त्रिभुज बनाएं
  let theta = this.velocity.heading() + radians(90);
  fill(127);
  stroke(200);
  push();
  translate(this.position.x, this.position.y);
  rotate(theta);
  beginShape();
  vertex(0, -this.r * 2);
  vertex(-this.r, this.r * 2);
  vertex(this.r, this.r * 2);
  endShape(CLOSE);
  pop();
}

// चारों ओर लपेट दो
Boid.prototype.borders = function() {
  if (this.position.x < -this.r)  this.position.x = width + this.r;
  if (this.position.y < -this.r)  this.position.y = height + this.r;
  if (this.position.x > width + this.r) this.position.x = -this.r;
  if (this.position.y > height + this.r) this.position.y = -this.r;
}

// पृथक्करण
// विधि आस-पास के boids के लिए जाँच करता है और दूर चला जाता है
Boid.prototype.separate = function(boids) {
  let desiredseparation = 25.0;
  let steer = createVector(0, 0);
  let count = 0;
  // सिस्टम में प्रत्येक बोड के लिए, जांचें कि क्या यह बहुत करीब है
  for (let i = 0; i < boids.length; i++) {
    let d = p5.Vector.dist(this.position,boids[i].position);
    // यदि दूरी 0 से अधिक है और मनमानी राशि से कम है (0 जब आप स्वयं हों)
    if ((d > 0) && (d < desiredseparation)) {
      // पड़ोसी से दूर की ओर इशारा करते हुए वेक्टर की गणना करें
      let diff = p5.Vector.sub(this.position, boids[i].position);
      diff.normalize();
      diff.div(d);        // दूरी से वजन
      steer.add(diff);
      count++;           // कितने का ट्रैक रखें
    }
  }
  // औसत -- कितने से विभाजित करें
  if (count > 0) {
    steer.div(count);
  }

  // जब तक वेक्टर 0 . से बड़ा है
  if (steer.mag() > 0) {
    // रेनॉल्ड्स को लागू करें: संचालन = वांछित - वेग
    steer.normalize();
    steer.mult(this.maxspeed);
    steer.sub(this.velocity);
    steer.limit(this.maxforce);
  }
  return steer;
}

// संरेखण
// सिस्टम में प्रत्येक पास के बोड के लिए, औसत वेग की गणना करें
Boid.prototype.align = function(boids) {
  let neighbordist = 50;
  let sum = createVector(0,0);
  let count = 0;
  for (let i = 0; i < boids.length; i++) {
    let d = p5.Vector.dist(this.position,boids[i].position);
    if ((d > 0) && (d < neighbordist)) {
      sum.add(boids[i].velocity);
      count++;
    }
  }
  if (count > 0) {
    sum.div(count);
    sum.normalize();
    sum.mult(this.maxspeed);
    let steer = p5.Vector.sub(sum, this.velocity);
    steer.limit(this.maxforce);
    return steer;
  } else {
    return createVector(0, 0);
  }
}

// सामंजस्य
// आस-पास के सभी बोड्स के औसत स्थान (अर्थात केंद्र) के लिए, उस स्थान की ओर स्टीयरिंग वेक्टर की गणना करें
Boid.prototype.cohesion = function(boids) {
  let neighbordist = 50;
  let sum = createVector(0, 0);   // सभी स्थानों को जमा करने के लिए खाली वेक्टर से शुरू करें
  let count = 0;
  for (let i = 0; i < boids.length; i++) {
    let d = p5.Vector.dist(this.position,boids[i].position);
    if ((d > 0) && (d < neighbordist)) {
      sum.add(boids[i].position); // स्थान जोड़ना
      count++;
    }
  }
  if (count > 0) {
    sum.div(count);
    return this.seek(sum);  // स्थान की ओर बढ़ें
  } else {
    return createVector(0, 0);
  }
}


