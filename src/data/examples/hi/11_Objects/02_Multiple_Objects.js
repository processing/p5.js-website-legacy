/*
  * @name वस्तुओं का नाम दें
  * @description एक जिटर क्लास बनाएं, कई ऑब्जेक्ट्स को इंस्टेंट करें,
  * और इसे स्क्रीन के चारों ओर ले जाएँ।
  */

let bug1; // वस्तुओं की घोषणा करें
let bug2;
let bug3;
let bug4;

function setup() {
  createCanvas(710, 400);
  // ऑब्जेक्ट बनाएं
  bug1 = new Jitter();
  bug2 = new Jitter();
  bug3 = new Jitter();
  bug4 = new Jitter();
}

function draw() {
  background(50, 89, 100);
  bug1.move();
  bug1.display();
  bug2.move();
  bug2.display();
  bug3.move();
  bug3.display();
  bug4.move();
  bug4.display();
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
