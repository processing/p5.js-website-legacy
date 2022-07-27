/*
* @name ड्राइंग
* @description जनरेटिव पेंटिंग प्रोग्राम।
*/

// सभी पथ
let paths = [];
// क्या हम पेंटिंग कर रहे हैं?
let painting = false;
// अगले सर्कल तक कब तक
let next = 0;
// अब हम कहाँ हैं और हम कहाँ थे?
let current;
let previous;

function setup() {
  createCanvas(720, 400);
  current = createVector(0,0);
  previous = createVector(0,0);
};

function draw() {
  background(200);
  
  // यदि यह एक नए बिंदु के लिए समय है
  if (millis() > next && painting) {

    // माउस की स्थिति को पकड़ो 
    current.x = mouseX;
    current.y = mouseY;

    // नए कण का बल माउस की गति पर आधारित होता है
    let force = p5.Vector.sub(current, previous);
    force.mult(0.05);

    // नया कण जोड़ें
    paths[paths.length - 1].add(current, force);
    
    // अगले सर्कल को शेड्यूल करें
    next = millis() + random(100);

    // माउस मूल्यों को स्टोर करें
    previous.x = current.x;
    previous.y = current.y;
  }

  // सभी पथ बनाएं
  for( let i = 0; i < paths.length; i++) {
    paths[i].update();
    paths[i].display();
  }
}

// इसे शुरू करो
function mousePressed() {
  next = 0;
  painting = true;
  previous.x = mouseX;
  previous.y = mouseY;
  paths.push(new Path());
}

// रुकें
function mouseReleased() {
  painting = false;
}

// पथ कणों की एक सूची है
class Path {
  constructor() {
    this.particles = [];
    this.hue = random(100);
  }

  add(position, force) {
    // स्थिति, बल और रंग के साथ एक नया कण जोड़ें
    this.particles.push(new Particle(position, force, this.hue));
  }
  
  // डिस्प्ले प्लाथ
  update() {  
    for (let i = 0; i < this.particles.length; i++) {
      this.particles[i].update();
    }
  }  
  
  // डिस्प्ले प्लाथ
  display() {    
    // पीछे की ओर से लूप करें
    for (let i = this.particles.length - 1; i >= 0; i--) {
     // अगर हम इसे हटा देते हैं
      if (this.particles[i].lifespan <= 0) {
        this.particles.splice(i, 1);
       // अन्यथा, इसे प्रदर्शित करें
      } else {
        this.particles[i].display(this.particles[i+1]);
      }
    }
  
  }  
}

// पथ के साथ कण
class Particle {
  constructor(position, force, hue) {
    this.position = createVector(position.x, position.y);
    this.velocity = createVector(force.x, force.y);
    this.drag = 0.95;
    this.lifespan = 255;
  }

  update() {
    // इसे हटाएं
    this.position.add(this.velocity);
    // इसे धीमा करें
    this.velocity.mult(this.drag);
    // इसे फीका करें
    this.lifespan--;
  }

   // कण ड्रा करें और इसे एक लाइन से कनेक्ट करें
   // दूसरे के लिए एक रेखा खींचें
  display(other) {
    stroke(0, this.lifespan);
    fill(0, this.lifespan/2);    
    ellipse(this.position.x,this.position.y, 8, 8);    
    // यदि हमें एक रेखा खींचने की आवश्यकता है
    if (other) {
      line(this.position.x, this.position.y, other.position.x, other.position.y);
    }
  }
}
