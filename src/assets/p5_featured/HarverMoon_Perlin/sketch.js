var particles = [];
var mouse;

var colorA;
var colorB;
var colorC;
var colorD;

function setup() {
	mouse = createVector(mouseX,mouseY);
	createCanvas(windowWidth,windowHeight);
	MnowPos = createVector(500,500);
	Macc = createVector(2,-2);
	noStroke();
	fill(0);
	rectMode(CENTER);
	background(255);
	colorA = color(48,222,179);
	colorB = color(221,166,232);
	colorC = color(145,162,  0);
	colorD = color(196,195,195);
}
function draw() {
	mouse.set(mouseX,mouseY)
	for(var i = 0; i < particles.length; i++){
		particles[i].update();
		particles[i].draw();
		var noiseRot = map(noise(particles[i].nowPos.x * .006 ,particles[i].nowPos.y * .006), .2, .8, 0, PI*2 );
		particles[i].acc.set(cos(noiseRot)*3,sin(noiseRot)*3);
	}
	if(particles.length < 500){
		MnowPos.set(mouse);
		MnowPos.add(random(-10,10), random(-10,10) );
		var mLoc = int(map(mouseX,0,width,0,4));
		if(mLoc == 0){
			particles[i] = new Particle(MnowPos,Macc,colorA);
		}
		else if(mLoc == 1){
			particles[i] = new Particle(MnowPos,Macc,colorB);
		}
		else if(mLoc == 2){
			particles[i] = new Particle(MnowPos,Macc,colorC);
		}
		else if(mLoc == 3){
			particles[i] = new Particle(MnowPos,Macc,colorD);
		}
	}
	for(var j = 0; j < particles.length; j++){
		if(particles[j].nowPos.x>=width-10 || particles[j].nowPos.x <= 10 || particles[j].nowPos.y>=height-10 || particles[j].nowPos.y <= 10  || particles[j].lifeCount <= 0){
			particles.splice(j,1);
			//println("kill : " + j);
		}
	}
}

function Particle ( posN, accN, colorIn){
	this.nowPos=createVector(posN.x,posN.y);
	this.acc = createVector(accN.x, accN.y);
	this.lifeCount = random(100,400);
	this.colorN = colorIn;
}

Particle.prototype.update = function(){
	this.lifeCount--;
	this.nowPos.add(this.acc);
}

Particle.prototype.draw = function(){
	fill(this.colorN);
	ellipse(this.nowPos.x,this.nowPos.y,2,2);
}