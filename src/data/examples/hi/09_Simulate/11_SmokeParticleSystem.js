/*
  * @name स्मोकपार्टिकल्स
  * @description डैन शिफमैन के स्मोकपार्टिकल सिस्टम उदाहरण का एक पोर्ट मूल रूप से वर्णन करें
  * प्रसंस्करण के लिए। धुएँ के रंग के कण बनाता है :p
  */

// कण के लिए बनावट
let particle_texture = null;

// हमारे कण प्रणाली को धारण करने वाला चर
let ps = null;

function preload() {
  particle_texture = loadImage("assets/particle_texture.png");
}

function setup() {

 // कैनवास का आकार निर्धारित करें
  createCanvas(640, 360);

  // हमारे कण प्रणाली को इनिशियलाइज़ करें
  ps = new ParticleSystem(0, createVector(width / 2, height - 60), particle_texture);
}

function draw() {
  background(0);

  let dx = map(mouseX, 0, width, -0.2, 0.2);
  let wind = createVector(dx, 0);

  ps.applyForce(wind);
  ps.run();
  for (let i = 0; i < 2; i++) {
    ps.addParticle();
  }

  // वायु शक्ति का प्रतिनिधित्व करने वाला एक तीर खींचें
  drawVector(wind, createVector(width / 2, 50, 0), 500);
}

/**
  * यह फ़ंक्शन हमारी "हवा" की दिशा को दर्शाने वाला एक तीर खींचता है।
  */
function drawVector(v, loc, scale){
  push();
  let arrowsize = 4;
  translate(loc.x, loc.y);
  stroke(255);
  rotate(v.heading());

  let len = v.mag() * scale;
  line(0, 0, len,0);
  line(len, 0, len-arrowsize, +arrowsize / 2);
  line(len, 0, len-arrowsize, -arrowsize / 2);
  pop();
}
//========= कण प्रणाली ==========

/**
  * एक बुनियादी कण प्रणाली वर्ग
 * @param num कणों की संख्या
 * @param v कण प्रणाली की उत्पत्ति
 * @param img_ सिस्टम में प्रत्येक कण के लिए एक बनावट
 * @constructor
 */
let ParticleSystem = function(num, v, img_) {

  this.particles = [];
  this.origin = v.copy(); // यदि हम गलती से मूल को गलती से बदल देते हैं, तो हम वेक्टर मान की प्रतिलिपि बनाना सुनिश्चित करते हैं
  this.img = img_
  for(let i = 0; i < num; ++i){
    this.particles.push(new Particle(this.origin, this.img));
  }
};

/**
  * यह फ़ंक्शन पूरे कण प्रणाली को चलाता है।
  */
ParticleSystem.prototype.run = function() {

   // उस सरणी की कैश लंबाई जिसे हम एक चर में लूप करने जा रहे हैं
   // आप समय-समय पर लूप के लिए <variable>.length देख सकते हैं लेकिन
   // हम इसे यहां कैश करते हैं क्योंकि अन्यथा लूप के प्रत्येक पुनरावृत्ति के लिए लंबाई की फिर से गणना की जाती है
  let len = this.particles.length;

  // लूप के माध्यम से और कणों को चलाएं
  for (let i = len - 1; i >= 0; i--) {
    let particle = this.particles[i];
    particle.run();

     // यदि कण मर चुका है, तो हम इसे हटा देते हैं।
     // जावास्क्रिप्ट सरणियों में "निकालें" फ़ंक्शन नहीं है, लेकिन "स्प्लिस" भी काम करता है।
     // हम इसे शुरू करने के लिए एक सूचकांक खिलाते हैं, फिर उस बिंदु से कितनी संख्या को निकालना है।
    if (particle.isDead()) {
      this.particles.splice(i, 1);
    }
  }
}

/**
  * सिस्टम में वर्तमान में मौजूद सभी कणों में एक बल वेक्टर जोड़ने की विधि
 * @param dir a p5.बल की दिशा का वर्णन करने वाला सदिश।
 */
ParticleSystem.prototype.applyForce = function(dir) {
  let len = this.particles.length;
  for(let i = 0; i < len; ++i){
    this.particles[i].applyForce(dir);
  }
}

/**
  * सिस्टम के मूल में और साथ में सिस्टम में एक नया कण जोड़ता है
  * मूल रूप से सेट बनावट।
  */
ParticleSystem.prototype.addParticle = function() {
    this.particles.push(new Particle(this.origin, this.img));
}

//========= कण ==========
/**
  * एक साधारण कण वर्ग, कण को एक छवि के रूप में प्रस्तुत करता है
  */
let Particle = function (pos, img_) {
  this.loc = pos.copy();

  let vx = randomGaussian() * 0.3;
  let vy = randomGaussian() * 0.3 - 1.0;

  this.vel = createVector(vx, vy);
  this.acc = createVector();
  this.lifespan = 100.0;
  this.texture = img_;
}

// साथ ही एक कण को अपडेट और प्रदर्शित करें। 
Particle.prototype.run = function() {
  this.update();
  this.render();
}

/**
  * एक कण प्रदर्शित करने के लिए एक समारोह
  */
Particle.prototype.render = function() {
  imageMode(CENTER);
  tint(255, this.lifespan);
  image(this.texture, this.loc.x, this.loc.y);
}

/**
  * किसी कण पर बल सदिश लगाने की एक विधि।
  */
Particle.prototype.applyForce = function(f) {
  this.acc.add(f);
}

/**
  * यह विधि यह देखने के लिए जाँच करती है कि क्या कण अपने जीवन काल के अंत तक पहुँच गया है,
  * यदि यह है, तो सत्य लौटाएँ, अन्यथा असत्य लौटाएँ।
  */
Particle.prototype.isDead = function () {
  if (this.lifespan <= 0.0) {
    return true;
  } else {
      return false;
    }
}

/**
  * यह विधि कण की स्थिति को अद्यतन करती है।
  */
Particle.prototype.update = function() {
  this.vel.add(this.acc);
  this.loc.add(this.vel);
  this.lifespan -= 2.5;
  this.acc.mult(0);
}
