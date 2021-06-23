/*
  * @name कण
  * @description नाम की एक हल्की-फुल्की जावास्क्रिप्ट लाइब्रेरी है
  * कण.जेएस जो एक बहुत ही मनभावन कण प्रणाली बनाता है।
  * यह p5.js का उपयोग करके उस कण प्रणाली को फिर से बनाने का एक प्रयास है।
  * Particle.js से प्रेरित, सागर अरोड़ा द्वारा योगदान।
  */


// यह वर्ग एक कण के गुणों का वर्णन करता है।
class Particle {
// निर्देशांक, त्रिज्या और सेट करना
// दोनों निर्देशांक अक्षों में एक कण की गति।
  constructor(){
    this.x = random(0,width);
    this.y = random(0,height);
    this.r = random(1,8);
    this.xSpeed = random(-2,2);
    this.ySpeed = random(-1,1.5);
  }

// एक कण का निर्माण।
  createParticle() {
    noStroke();
    fill('rgba(200,169,169,0.5)');
    circle(this.x,this.y,this.r);
  }

// कण को ​​गति में सेट करना।
  moveParticle() {
    if(this.x < 0 || this.x > width)
      this.xSpeed*=-1;
    if(this.y < 0 || this.y > height)
      this.ySpeed*=-1;
    this.x+=this.xSpeed;
    this.y+=this.ySpeed;
  }

// यह फ़ंक्शन कनेक्शन बनाता है (लाइनें)
// कणों के बीच जो एक निश्चित दूरी से कम दूरी पर हैं
  joinParticles(paraticles) {
    particles.forEach(element =>{
      let dis = dist(this.x,this.y,element.x,element.y);
      if(dis<85) {
        stroke('rgba(255,255,255,0.04)');
        line(this.x,this.y,element.x,element.y);
      }
    });
  }
}

// कई कणों को जोड़ने के लिए एक सरणी
let particles = [];

function setup() {
  createCanvas(720, 400);
  for(let i = 0;i<width/10;i++){
    particles.push(new Particle());
  }
}

function draw() {
  background('#0f0f0f');
  for(let i = 0;i<particles.length;i++) {
    particles[i].createParticle();
    particles[i].moveParticle();
    particles[i].joinParticles(particles.slice(i));
  }
}