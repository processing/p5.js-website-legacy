/*
  * @name स्प्रिंग्स
  * @frame 710,400
  * @description माउस को किसी एक सर्कल के ऊपर ले जाएं और फिर से स्थिति में लाने के लिए क्लिक करें।
  * जब आप माउस को छोड़ते हैं, तो यह वापस स्थिति में आ जाएगा।
  * प्रत्येक मंडली का व्यवहार थोड़ा अलग होता है।
  * (https://processing.org/examples/springs.html से पोर्ट किया गया)
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

// स्प्रिंग क्लास
function Spring (_x, _y, _s, _d, _m, _k_in, _others, _id) {
// स्क्रीन मान
   // यह। एक्सपोस = _x;
   // this.ypos = _y;

  this.x_pos = _x;
  this.y_pos= _y;

  this.size = 20;
  this.size = _s;

  this.over = false;
  this.move = false;

	// स्प्रिंग सिमुलेशन स्थिरांक
  this.mass = _m;       // द्रव्यमान
  this.k = 0.2;    // वसंत निरंतर
  this.k = _k_in;
  this.damp = _d;       // भिगोना
  this.rest_posx = _x;  // आराम की स्थिति X
  this.rest_posy = _y;  // आराम की स्थिति Y

   // स्प्रिंग सिमुलेशन चर
   // फ्लोट पॉज़ = 20.0; // पद
  this.velx = 0.0;   // एक्स वेग
  this.vely = 0.0;   // वाई वेग
  this.accel = 0;    // त्वरण
  this.force = 0;    // बल

  this.friends = _others;
  this.id = _id;

  this.update = function() {

	if (this.move) {
	  this.rest_posy = mouseY;
	  this.rest_posx = mouseX;
	}

	this.force = -this.k * (this.y_pos - this.rest_posy);  // f=-ky
	this.accel = this.force / this.mass;                 // त्वरण सेट करें, f=ma == a=f/m
	this.vely = this.damp * (this.vely + this.accel);         // वेग सेट करें
	this.y_pos = this.y_pos + this.vely;           // अद्यतन स्थिति


	this.force = -this.k * (this.x_pos - this.rest_posx);  // f=-ky
	this.accel = this.force / this.mass;                 // त्वरण सेट करें, f=ma == a=f/m
	this.velx = this.damp * (this.velx + this.accel);         // वेग सेट करें
	this.x_pos = this.x_pos + this.velx;           // अद्यतन स्थिति


	if ((this.overEvent() || this.move) && !(this.otherOver()) ) {
	  this.over = true;
	} else {
	    this.over = false;
	  }
  }

 // यह देखने के लिए परीक्षण करें कि क्या माउस इस वसंत के ऊपर है
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

 // सुनिश्चित करें कि कोई अन्य स्प्रिंग सक्रिय नहीं है
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