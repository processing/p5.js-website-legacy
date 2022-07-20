/*
 * @name Koch Curve
 * @arialabel Koch snowflake is created by a single horizontal white line on a black background that then morphs into a triangle in the middle, and then each side of the triangle also becomes two more triangles, and this repeats 5 times
 * @description Renders a simple fractal, the Koch snowflake. Each recursive level is drawn in sequence.
 * By Daniel Shiffman
 */

let k;

function setup() {
  createCanvas(710, 400);
  frameRate(1);  // Animate slowly
  k = new KochFractal();
}

function draw() {
  background(0);
  // Draws the snowflake!
  k.render();
  // Iterate
  k.nextLevel();
  // Let's not do it more than 5 times. . .
  if (k.getCount() > 5) {
    k.restart();
  }
}

// A class to describe one line segment in the fractal
// Includes methods to calculate midp5.Vectors along the line according to the Koch algorithm

class KochLine {
  constructor(a,b) {
    // Two p5.Vectors,
    // start is the "left" p5.Vector and
    // end is the "right p5.Vector
    this.start = a.copy();
    this.end = b.copy();
  }

  display() {
    stroke(255);
    line(this.start.x, this.start.y, this.end.x, this.end.y);
  }

  kochA() {
    return this.start.copy();
  }

  // This is easy, just 1/3 of the way
  kochB() {
    let v = p5.Vector.sub(this.end, this.start);
    v.div(3);
    v.add(this.start);
    return v;
  }

  // More complicated, have to use a little trig to figure out where this p5.Vector is!
  kochC() {
    let a = this.start.copy(); // Start at the beginning
    let v = p5.Vector.sub(this.end, this.start);
    v.div(3);
    a.add(v);  // Move to point B
    v.rotate(-PI/3); // Rotate 60 degrees
    a.add(v);  // Move to point C
    return a;
  }

  // Easy, just 2/3 of the way
  kochD() {
    let v = p5.Vector.sub(this.end, this.start);
    v.mult(2/3.0);
    v.add(this.start);
    return v;
  }

  kochE() {
    return this.end.copy();
  }
}

// A class to manage the list of line segments in the snowflake pattern

class KochFractal {
  constructor() {
    this.start = createVector(0,height-20);   // A p5.Vector for the start
    this.end = createVector(width,height-20); // A p5.Vector for the end
    this.lines = [];                         // An array to keep track of all the lines
    this.count = 0;
    this.restart();
  }

  nextLevel() {
    // For every line that is in the arraylist
    // create 4 more lines in a new arraylist
    this.lines = this.iterate(this.lines);
    this.count++;
  }

  restart() {
    this.count = 0;      // Reset count
    this.lines = [];  // Empty the array list
    this.lines.push(new KochLine(this.start,this.end));  // Add the initial line (from one end p5.Vector to the other)
  }

  getCount() {
    return this.count;
  }

  // This is easy, just draw all the lines
  render() {
    for(let i = 0; i < this.lines.length; i++) {
      this.lines[i].display();
    }
  }

  // This is where the **MAGIC** happens
  // Step 1: Create an empty arraylist
  // Step 2: For every line currently in the arraylist
  //   - calculate 4 line segments based on Koch algorithm
  //   - add all 4 line segments into the new arraylist
  // Step 3: Return the new arraylist and it becomes the list of line segments for the structure

  // As we do this over and over again, each line gets broken into 4 lines, which gets broken into 4 lines, and so on. . .
  iterate(before) {
    let now = [];    // Create emtpy list
    for(let i = 0; i < this.lines.length; i++) {
      let l = this.lines[i];
      // Calculate 5 koch p5.Vectors (done for us by the line object)
      let a = l.kochA();
      let b = l.kochB();
      let c = l.kochC();
      let d = l.kochD();
      let e = l.kochE();
      // Make line segments between all the p5.Vectors and add them
      now.push(new KochLine(a,b));
      now.push(new KochLine(b,c));
      now.push(new KochLine(c,d));
      now.push(new KochLine(d,e));
    }
    return now;
  }
}
