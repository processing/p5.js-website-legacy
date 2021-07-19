/*
  * @name वस्तु
  * @description एक जिटर क्लास बनाएं, किसी ऑब्जेक्ट को इंस्टेंट करें,
  * और इसे स्क्रीन के चारों ओर ले जाएँ। के साथ आरंभ करने से अनुकूलित
  * केसी रियास और बेन फ्राई द्वारा प्रसंस्करण।
  */

let bug; // ऑब्जेक्ट घोषित करें

function setup() {
  createCanvas(710, 400);
  // ऑब्जेक्ट बनाएं
  bug = new Jitter();
}

function draw() {
  background(50, 89, 100);
  bug.move();
  bug.display();
}

// Jitter class
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
