/*
  * @name मल्टीपल पार्टिकल सिस्टम
  * @description माउस स्थान पर कणों का एक विस्फोट उत्पन्न करने के लिए माउस पर क्लिक करें।<br>प्रत्येक फट कण और क्रेज़ीपार्टिकल्स (कण का एक उपवर्ग) के साथ एक कण प्रणाली का एक उदाहरण है।<br>यहां वंशानुक्रम और बहुरूपता के उपयोग पर ध्यान दें। <br>
  * डैनियल शिफमैन द्वारा मूल।
  */
let systems;

function setup() {
  createCanvas(710, 400);
  systems = [];
}

function draw() {
  background(51);
  background(0);
  for (i = 0; i < systems.length; i++) {
    systems[i].run();
    systems[i].addParticle();
  }
  if (systems.length == 0) {
    fill(255);
    textAlign(CENTER);
    textSize(32);
    text("click mouse to add particle systems", width / 2, height / 2);
  }
}

function mousePressed() {
  this.p = new ParticleSystem(createVector(mouseX, mouseY));
  systems.push(p);
}

// एक साधारण कण वर्ग
let Particle = function(position) {
  this.acceleration = createVector(0, 0.05);
  this.velocity = createVector(random(-1, 1), random(-1, 0));
  this.position = position.copy();
  this.lifespan = 255.0;
};

Particle.prototype.run = function() {
  this.update();
  this.display();
};

// स्थिति को अद्यतन करने की विधि
Particle.prototype.update = function(){
  this.velocity.add(this.acceleration);
  this.position.add(this.velocity);
  this.lifespan -= 2;
};

// प्रदर्शित करने की विधि
Particle.prototype.display = function () {
  stroke(200, this.lifespan);
  strokeWeight(2);
  fill(127, this.lifespan);
  ellipse(this.position.x, this.position.y, 12, 12);
};

// क्या कण अभी भी उपयोगी है?
Particle.prototype.isDead = function () {
  if (this.lifespan < 0) {
    return true;
  } else {
    return false;
  }
};

let ParticleSystem = function (position) {
  this.origin = position.copy();
  this.particles = [];
};

ParticleSystem.prototype.addParticle = function () {
  // सिस्टम में या तो एक कण या क्रेजीपार्टिकल जोड़ें
  if (int(random(0, 2)) == 0) {
    p = new Particle(this.origin);
  }
  else {
    p = new CrazyParticle(this.origin);
  }
  this.particles.push(p);
};

ParticleSystem.prototype.run = function () {
  for (let i = this.particles.length - 1; i >= 0; i--) {
    let p = this.particles[i];
    p.run();
    if (p.isDead()) {
      this.particles.splice(i, 1);
    }
  }
};

// कण का एक उपवर्ग

function CrazyParticle(origin) {
   // सुनिश्चित करें कि पैरेंट कंस्ट्रक्टर को कॉल करें (फ़ंक्शन # कॉल का उपयोग करके)
   // कि "यह" कॉल के दौरान सही ढंग से सेट है  
  Particle.call(this, origin);

  // हमारे जोड़े गए गुणों को प्रारंभ करें
  this.theta = 0.0;
};

// एक क्रेजी.प्रोटोटाइप ऑब्जेक्ट बनाएं जो पार्टिकल.प्रोटोटाइप से विरासत में मिले।
// नोट: यहां एक सामान्य त्रुटि "नया कण ()" बनाने के लिए उपयोग करना है
// क्रेजी.प्रोटोटाइप। यह कई कारणों से गलत है, कम से कम
// कि हमारे पास "मूल" के लिए कण देने के लिए कुछ भी नहीं है
// बहस। पार्टिकल को कॉल करने का सही स्थान ऊपर है, जहां हम कॉल करते हैं
// यह पागल से।
CrazyParticle.prototype = Object.create(Particle.prototype); // नीचे दिए गए नोट देखें

// क्रेजीपार्टिकल को संदर्भित करने के लिए "कन्स्ट्रक्टर" संपत्ति सेट करें
CrazyParticle.prototype.constructor = CrazyParticle;

// ध्यान दें कि हमारे पास यहां रन () विधि नहीं है; यह कण से विरासत में मिला है

// यह अद्यतन () विधि मूल वर्ग अद्यतन () विधि को ओवरराइड करती है
CrazyParticle.prototype.update=function() {
  Particle.prototype.update.call(this);
  // क्षैतिज वेग के आधार पर वृद्धि रोटेशन
  this.theta += (this.velocity.x * this.velocity.mag()) / 10.0;
}

// यह डिस्प्ले () मेथड पैरेंट क्लास डिस्प्ले () मेथड को ओवरराइड करता है
CrazyParticle.prototype.display=function() {
  // एक नियमित कण की तरह ही दीर्घवृत्त को प्रस्तुत करें
  Particle.prototype.display.call(this);
  // फिर एक घूर्णन रेखा जोड़ें
  push();
  translate(this.position.x, this.position.y);
  rotate(this.theta);
  stroke(255, this.lifespan);
  line(0, 0, 25, 0);
  pop();
}
