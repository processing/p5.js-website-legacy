/* @name Inheritance
 * @arialabel Two white circles connected and spinning around each other anti-clockwise with a black line behind that is spinning clockwise
 * @description A class can be defined using another class as a
 * foundation. In object-oriented programming terminology, one class can
 * inherit fields and methods from another. An object that inherits from
 * another is called a subclass, and the object it inherits from is called
 * a superclass. A subclass extends the superclass.
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

class Spin {
constructor(x, y, s) {
    this.x = x;
    this.y = y;
    this.speed = s;
    this.angle = 0.0;
}

update() {
    this.angle += this.speed;
}
}

class SpinArm extends Spin {
constructor(x, y, s) {
    super(x, y, s)
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

class SpinSpots extends Spin {
constructor(x, y, s, d) {
    super(x, y, s)
    this.dim = d;
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
