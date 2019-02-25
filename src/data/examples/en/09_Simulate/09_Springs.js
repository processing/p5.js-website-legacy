/*
 * @name Springs
 * @frame 710,400
 * @description Move the mouse over one of the circles and click to re-position.
 * When you release the mouse, it will snap back into position.
 * Each circle has a slightly different behavior.
 * (ported from https://processing.org/examples/springs.html)
 */
let num = 3;
let springs = [];

function setup() {
  createCanvas(710, 400);
  noStroke();

  springs[0] = new Spring(240, 260, 40, 0.98, 8.0, 0.1, springs, 0);
  springs[1] = new Spring(320, 210, 120, 0.95, 9.0, 0.1, springs, 1);
  springs[2] = new Spring(180, 170, 200, 0.90, 9.9, 0.1, springs, 2);
}

function draw() {
  background(51);

  for (let i = 0; i < num; i++) {
	springs[i].update();
	springs[i].display();
  }
}

function mousePressed() {
  for (let i = 0; i < num; i++) {
    springs[i].pressed();
  }
}

function mouseReleased() {
  for (let i = 0; i < num; i++) {
	springs[i].released();
  }
}

// Spring class
function Spring (_x, _y, _s, _d, _m, _k_in, _others, _id) {
  // Screen values
  // this.xpos = _x;
  // this.ypos = _y;

  this.x_pos = _x;
  this.y_pos= _y;

  this.size = 20;
  this.size = _s;

  this.over = false;
  this.move = false;

	// Spring simulation constants
  this.mass = _m;       // Mass
  this.k = 0.2;    // Spring constant
  this.k = _k_in;
  this.damp = _d;       // Damping
  this.rest_posx = _x;  // Rest position X
  this.rest_posy = _y;  // Rest position Y

  // Spring simulation variables
  //float pos = 20.0; // Position
  this.velx = 0.0;   // X Velocity
  this.vely = 0.0;   // Y Velocity
  this.accel = 0;    // Acceleration
  this.force = 0;    // Force

  this.friends = _others;
  this.id = _id;

  this.update = function() {

	if (this.move) {
	  this.rest_posy = mouseY;
	  this.rest_posx = mouseX;
	}

	this.force = -this.k * (this.y_pos - this.rest_posy);  // f=-ky
	this.accel = this.force / this.mass;                 // Set the acceleration, f=ma == a=f/m
	this.vely = this.damp * (this.vely + this.accel);         // Set the velocity
	this.y_pos = this.y_pos + this.vely;           // Updated position


	this.force = -this.k * (this.x_pos - this.rest_posx);  // f=-ky
	this.accel = this.force / this.mass;                 // Set the acceleration, f=ma == a=f/m
	this.velx = this.damp * (this.velx + this.accel);         // Set the velocity
	this.x_pos = this.x_pos + this.velx;           // Updated position


	if ((this.overEvent() || this.move) && !(this.otherOver()) ) {
	  this.over = true;
	} else {
	    this.over = false;
	  }
  }

  // Test to see if mouse is over this spring
  this.overEvent = function() {
	let disX = this.x_pos - mouseX;
	let disY = this.y_pos - mouseY;
	let dis = createVector(disX, disY);
	if (dis.mag() < this.size / 2 ) {
	  return true;
	} else {
		return false;
	  }
  }

  // Make sure no other springs are active
  this.otherOver = function() {
	for (let i = 0; i < num; i++) {
	  if (i != this.id) {
		if (this.friends[i].over == true) {
		  return true;
		}
	  }
	}
	return false;
  }

  this.display = function() {
	if (this.over) {
	  fill(153);
	} else {
	    fill(255);
	  }
	ellipse(this.x_pos, this.y_pos, this.size, this.size);
  }

  this.pressed = function() {
	if (this.over) {
	  this.move = true;
	} else {
	  this.move = false;
	}
  }

  this.released = function() {
	this.move = false;
	this.rest_posx = this.y_pos;
	this.rest_posy = this.y_pos;
  }
};