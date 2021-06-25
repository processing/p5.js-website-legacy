/*
  * @name वस्तुओं की सरणी
  * @description एक जिटर क्लास बनाएं, वस्तुओं की एक सरणी को इंस्टेंट करें
  * और उन्हें स्क्रीन के चारों ओर ले जाएँ।
  */

let bugs = []; // जिटर ऑब्जेक्ट्स की सरणी

function setup() {
  createCanvas(710, 400);
  // ऑब्जेक्ट बनाएं
  for (let i = 0; i < 50; i++) {
    bugs.push(new Jitter());
  }
}

function draw() {
  background(50, 89, 100);
  for (let i = 0; i < bugs.length; i++) {
    bugs[i].move();
    bugs[i].display();
  }
}

// जिटर क्लास
class Jitter {
  constructor() {
    this.x = random(width);
    this.y = random(height);
    this.diameter = random(10, 30);
    this.speed = 1;
  }

  move() {
    this.x += random(-this.speed, this.speed);
    this.y += random(-this.speed, this.speed);
  }

  display() {
    ellipse(this.x, this.y, this.diameter, this.diameter);
  }
}
