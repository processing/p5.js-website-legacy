/*  @name वंशानुक्रम
  * @description एक वर्ग को दूसरे वर्ग का उपयोग करके परिभाषित किया जा सकता है a
  * नींव। वस्तु-उन्मुख प्रोग्रामिंग शब्दावली में, एक वर्ग कर सकता है
  * फ़ील्ड और विधियों को दूसरे से प्राप्त करें। एक वस्तु जो विरासत में मिलती है
  * दूसरे को उपवर्ग कहा जाता है, और जिस वस्तु से इसे विरासत में मिला है उसे कहा जाता है
  * एक सुपरक्लास। एक उपवर्ग सुपरक्लास का विस्तार करता है।
  */
let spots, arm;

function setup() {
  createCanvas(640, 360);
  arm = new SpinArm(width/2, height/2, 0.01);
  spots = new SpinSpots(width/2, height/2, -0.02, 90.0);
}

function draw() {
  background(204);
  arm.update();
  arm.display();
  spots.update();
  spots.display();
}

class SpinArm {
  constructor(x, y, s) {
    this.x = x;
    this.y = y;
    this.speed = s;
    this.angle = 0.0;
  }

  update() {
    this.angle += this.speed;
  }

  display() {
    strokeWeight(1);
    stroke(0);
    push();
    translate(this.x, this.y);
    this.angle += this.speed;
    rotate(this.angle);
    line(0, 0, 165, 0);
    pop();
  }
}

class SpinSpots {
  constructor(x, y, s, d) {
    this.x = x;
    this.y = y;
    this.speed = s;
    this.dim = d;
    this.angle = 0.0;
  }

  update() {
    this.angle += this.speed;
  }

  display() {
    noStroke();
    push();
    translate(this.x, this.y);
    this.angle += this.speed;
    rotate(this.angle);
    ellipse(-this.dim/2, 0, this.dim, this.dim);
    ellipse(this.dim/2, 0, this.dim, this.dim);
    pop();
  }
}
