var inc = .1;
var scl = 10;
var cols, rows;

var zoff = 0;

var particle = []

var flowfield;

function setup() {
	createCanvas(windowWidth, windowHeight);
	cols = floor(width/scl)
	rows = floor(height/scl)

	flowfield = new Array(cols * rows)

for (var i = 0; i < 150; i++) {
		particle[i] = new Particle();
	}

	background('#FFCCC3')

}

function draw() {

	var yoff = 0
for (var y = 0; y < rows; y++) {
	var xoff = 0
for (var x = 0; x < cols; x++) {
		var index =  x + y * cols
		var angle = noise(xoff, yoff, zoff) * TWO_PI * 4;
		var v = p5.Vector.fromAngle(angle)
		v.setMag(1);
		flowfield[index] = v
		xoff += inc
		// stroke(0,50);
		// strokeWeight(1)

	}
	yoff += inc


	zoff += 0.0003
}

for (var i = 0; i < particle.length; i++) {
	particle[i].follow(flowfield)
	particle[i].update()
	particle[i].edges()
	particle[i].show()

	}
}

function resizeWindow(){
	resizeWindow(windowWidth, windowHeight)
}


function Particle(){
	this.pos = createVector(random(width),random(height));
	this.vel = createVector(0,0);
	this.acc = createVector(0,0);
	this.maxspeed = 1;

	this.prevPos = this.pos.copy()

	this.update = function(){
		this.vel.add(this.acc);
		this.vel.limit(this.maxspeed)
		this.pos.add(this.vel);
		this.acc.mult(0)
	}

	this.follow = function(vectors) {
		var x = floor(this.pos.x / scl);
		var y = floor(this.pos.y / scl);
		var index = x + y * cols;
		var force = vectors[index];
		this.applyForce(force);
	}

this.applyForce = function(force) {
	this.acc.add(force);
	}

this.show = function(){
	line(this.pos.x, this.pos.y, this.prevPos.x, this.prevPos.y)


	if (mouseX < width*.25){
		stroke(249,226,149, 30)

	}else if (mouseX < width*.5){
		stroke(128,150,229, 30)

	}else if (mouseX < width*.75){
		stroke(255,149,197, 30)

	} else if (mouseX < width){
		stroke(128,239,255, 30)

	}

	// this.updatePrev()
	}

this.updatePrev = function() {
	this.prevPos.x = this.pos.x
	this.prevPos.y = this.pos.y

}

this.edges = function() {
	if(this.pos.x > width) {
		this.pos.x = 0;
		this.updatePrev()
	}
	if(this.pos.x < 0) {
		this.pos.x = width;
		this.updatePrev()

	}
	if(this.pos.y > height) {
		this.pos.y = 0
		this.updatePrev()

	}
	if(this.pos.y < 0) {
		this.pos.y = height
		this.updatePrev()

	}

	}
}
