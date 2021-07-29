/*
  * @name झुंड
  * @description <a href="http://www.red3d.com/cwr/">क्रेग रेनॉल्ड्स के "फ्लॉकिंग" व्यवहार</a> का प्रदर्शन।<br>
  * (नियम: सामंजस्य, पृथक्करण, संरेखण।)<br>
  * <a href="http://natureofcode.com">natureofcode.com</a> से।
  */
let boids = [];

function setup() {
  createCanvas(720, 400);

  // सिस्टम में बोलियों का एक प्रारंभिक सेट जोड़ें
  for (let i = 0; i < 100; i++) {
    boids[i] = new Boid(random(width), random(height));
  }
}

function draw() {
  background(51);
  // सभी बोड्स चलाएं
  for (let i = 0; i < boids.length; i++) {
    boids[i].run(boids);
  }
}

// बोईड क्लास
// पृथक्करण, सामंजस्य, संरेखण के तरीके जोड़े गए
class Boid {
  constructor(x, y) {
    this.acceleration = createVector(0, 0);
    this.velocity = p5.Vector.random2D();
    this.position = createVector(x, y);
    this.r = 3.0;
    this.maxspeed = 3;    // अधिकतम गति
    this.maxforce = 0.05; // अधिकतम स्टीयरिंग बल
  }

  run(boids) {
    this.flock(boids);
    this.update();
    this.borders();
    this.render();
  }
  
  // बल त्वरण में जाते हैं
  applyForce(force) {
    this.acceleration.add(force);
  }
  
  // हम हर बार तीन नियमों के आधार पर एक नया त्वरण जमा करते हैं
  flock(boids) {
    let sep = this.separate(boids); // पृथक्करण
    let ali = this.align(boids);    // संरेखण
    let coh = this.cohesion(boids); // सामंजस्य
    // मनमाने ढंग से इन ताकतों को तौलें
    sep.mult(2.5);
    ali.mult(1.0);
    coh.mult(1.0);
    // बल वैक्टर को त्वरण में जोड़ें
    this.applyForce(sep);
    this.applyForce(ali);
    this.applyForce(coh);
  }
  
  // स्थान अपडेट करने की विधि
  update() {
    // वेग अपडेट करें
    this.velocity.add(this.acceleration);
    // सीमा गति
    this.velocity.limit(this.maxspeed);
    this.position.add(this.velocity);
    // प्रत्येक चक्र में त्वरण को 0 पर रीसेट करें
    this.acceleration.mult(0);
  }
  
   // एक विधि जो एक लक्ष्य की ओर एक स्टीयरिंग बल की गणना और लागू करती है
   // स्टीयर = वांछित माइनस वेलोसिटी
  seek(target) {
    let desired = p5.Vector.sub(target, this.position); // स्थान से लक्ष्य की ओर इशारा करते हुए एक वेक्टर
    // वांछित और स्केल को अधिकतम गति के लिए सामान्यीकृत करें
    desired.normalize();
    desired.mult(this.maxspeed);
    // संचालन = वांछित शून्य वेग
    let steer = p5.Vector.sub(desired, this.velocity);
    steer.limit(this.maxforce); // अधिकतम स्टीयरिंग बल तक सीमित करें
    return steer;
  }
  
  // एक सर्कल के रूप में बोइड ड्रा करें
  render() {
    fill(127, 127);
    stroke(200);
    ellipse(this.position.x, this.position.y, 16, 16);
  }
  
  // चारों ओर लपेट दो
  borders() {
    if (this.position.x < -this.r) this.position.x = width + this.r;
    if (this.position.y < -this.r) this.position.y = height + this.r;
    if (this.position.x > width + this.r) this.position.x = -this.r;
    if (this.position.y > height + this.r) this.position.y = -this.r;
  }
  
   // पृथक्करण
   // विधि आस-पास के boids के लिए जाँच करता है और दूर चला जाता है
  separate(boids) {
    let desiredseparation = 25.0;
    let steer = createVector(0, 0);
    let count = 0;
    // सिस्टम में प्रत्येक बोड के लिए, जांचें कि क्या यह बहुत करीब है
    for (let i = 0; i < boids.length; i++) {
      let d = p5.Vector.dist(this.position, boids[i].position);
      // यदि दूरी 0 से अधिक है और मनमानी राशि से कम है (0 जब आप स्वयं हों)
      if ((d > 0) && (d < desiredseparation)) {
        // पड़ोसी से दूर की ओर इशारा करते हुए वेक्टर की गणना करें
        let diff = p5.Vector.sub(this.position, boids[i].position);
        diff.normalize();
        diff.div(d); // दूरी से वजन
        steer.add(diff);
        count++; // कितने का ट्रैक रखें
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
   // सिस्टम में प्रत्येक आस-पास के बोड के लिए, औसत वेग की गणना करें
  align(boids) {
    let neighbordist = 50;
    let sum = createVector(0, 0);
    let count = 0;
    for (let i = 0; i < boids.length; i++) {
      let d = p5.Vector.dist(this.position, boids[i].position);
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
  cohesion(boids) {
    let neighbordist = 50;
    let sum = createVector(0, 0); // सभी स्थानों को जमा करने के लिए खाली वेक्टर से शुरू करें
    let count = 0;
    for (let i = 0; i < boids.length; i++) {
      let d = p5.Vector.dist(this.position, boids[i].position);
      if ((d > 0) && (d < neighbordist)) {
        sum.add(boids[i].position); // स्थान जोड़ना
        count++;
      }
    }
    if (count > 0) {
      sum.div(count);
      return this.seek(sum); // स्थान की ओर बढ़ें
    } else {
      return createVector(0, 0);
    }
  }  
}

