/*
 * @name Arctangent. 
 * @frame 720,400
 * Move the mouse to change the direction of the eyes. The atan2() 
 * function computes the angle from each eye to the cursor.
 */

var e1, e2, e3;

function setup() {
  createCanvas(720, 400);
  noStroke();
  e1 = new Eye(250, 16, 120);
  e2 = new Eye(164, 185, 80);
  e3 = new Eye(420, 230, 220);
}

function draw() {
  background(102);

  e1.update(mouseX, mouseY);
  e2.update(mouseX, mouseY);
  e3.update(mouseX, mouseY);

  e1.display();
  e2.display();
  e3.display();
}

function Eye(tx, ty, ts) {
  let { angle, x, y, size } = this;
  angle = 0.0;
  x = tx;
  y = ty;
  size = ts;

  this.update = function(mx, my) {
    angle = atan2(my - y, mx - x);
  };

  this.display = function() {
    push();
    translate(x, y);
    fill(255);
    ellipse(0, 0, size, size);
    rotate(angle);
    fill(153, 204, 0);
    ellipse(size / 4, 0, size / 2, size / 2);
    pop();
  };
}
