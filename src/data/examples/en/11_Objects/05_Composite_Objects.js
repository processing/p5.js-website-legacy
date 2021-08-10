/* @name Composite Objects
 * @arialabel Two white egg shapes that totter side to side. There is a grey circle within each egg that expands larger until it is off the screen
 * @description An object can include several other objects.
 * Creating such composite objects is a good way to use the principles
 * of modularity and build higher levels of abstraction within a program.
 */
let er1, er2;

function setup() {
createCanvas(640, 360);
er1 = new EggRing(width * 0.45, height * 0.5, 0.1, 120);
er2 = new EggRing(width * 0.65, height * 0.8, 0.05, 180);
}

function draw() {
background(0);
er1.transmit();
er2.transmit();
}

class Egg {
constructor(xpos, ypos, t, s) {
    this.x = xpos;
    this.y = ypos;
    this.tilt = t;
    this.scalar = s / 100.0;
    this.angle = 0.0;
}

wobble() {
    this.tilt = cos(this.angle) / 8;
    this.angle += 0.1;
}

display() {
    noStroke();
    fill(255);
    push();
    translate(this.x, this.y);
    rotate(this.tilt);
    scale(this.scalar);
    beginShape();
    vertex(0, -100);
    bezierVertex(25, -100, 40, -65, 40, -40);
    bezierVertex(40, -15, 25, 0, 0, 0);
    bezierVertex(-25, 0, -40, -15, -40, -40);
    bezierVertex(-40, -65, -25, -100, 0, -100);
    endShape();
    pop();
}
}

class Ring {
start(xpos, ypos) {
    this.x = xpos;
    this.y = ypos;
    this.on = true;
    this.diameter = 1;
}

grow() {
    if (this.on == true) {
        this.diameter += 0.5;
        if (this.diameter > width * 2) {
            this.diameter = 0.0;
        }
    }
    }

display() {
    if (this.on == true) {
        noFill();
        strokeWeight(4);
        stroke(155, 153);
        ellipse(this.x, this.y, this.diameter, this.diameter);
    }
}
}

class EggRing {
constructor(x, y, t, sp) {
    this.x = x;
    this.y = y;
    this.t = t;
    this.sp = sp;
    this.circle = new Ring();
    this.ovoid = new Egg(this.x, this.y, this.t, this.sp);
    this.circle.start(this.x, this.y - this.sp/2);
}

transmit() {
    this.ovoid.wobble();
    this.ovoid.display();
    this.circle.grow();
    this.circle.display();
    if (circle.on == false) {
        circle.on = true;
    }
}
}
