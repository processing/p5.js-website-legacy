/* @name Multiple constructors
 * @description A class can have multiple constructors that assign the fields
 * in different ways. Sometimes it's beneficial to specify every aspect of an
 * object's data by assigning parameters to the fields, but other times it
 * might be appropriate to define only one or a few.
 */
let sp1, sp2;

function setup() {
  createCanvas(640, 360);
  background(204);
  noLoop();
  // Run the constructor without parameters
  sp1 = new Spot(width*0.25, height*0.5, 40);
  // Run the constructor with three widthout parameters
  sp2 = new Spot(width*0.5, height*0.5, 120);
}

function draw() {
  sp1.display();
  sp2.display();
}

class Spot {
  constructor(xpos, ypos, r) {
    this.x = xpos;
    this.y = ypos;
    this.radius = r;
  }

  display() {
    ellipse(this.x, this.y, this.radius*2, this.radius*2);
  }
}


