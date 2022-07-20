/*
  Aurora II - modified for p5.js homepage June 25th,2015
  (2015, digital/live sculpture, pixel accumulation)
  Christopher Eugene Mills

  License at bottom.
 */

//Switches
var genCoord = false;
var controlAmp = false;

var motion = true;
var randir = true;

var blur = true;
var timed = true;

//NoiseField
var p = []; //4
var s1 = []; //numlines
var s2 = []; //numlines
var lines = []; //numlines

var numlines = 80;
var reslines = 20;
var amplitude = 0;
var maxAmp = 280;
var minAmp = 35;
var safeAmp = 3;
var edgeCalm = 0; //1.4

var lineRes = 0.15;
var stepRes = 0.041;

//Appearance
var strWei = 1;
var strAlpha = 0.55;
var bgAlpha = 1/20;

//Motion
var m, mAcc;
var maxVel = 0.010;

//Timer
var start, end;
var trigger = 12; //seconds


function setup() {
  //devicePixelScaling(false);
  createCanvas(windowWidth, windowHeight);
  //noSmooth();
  frameRate(30);

  //Set Appearance
  strokeWeight(strWei);
  colorMode(HSB, 360, 100, 100, 1);
  curveTightness(0);
  noFill();

  //Resettable
  init2();
}

function init2() {
  noiseSeed(random(10000000));

  //Timer Start
  if (timed) {
    start = millis();
    end = start + (trigger*1000);
  }

  //Colors
    var h = random(360);
    if (blur) {bg = color(0,0,100,bgAlpha);}
    else {bg = color(0,0,100);}
    str = color(h,80,75, strAlpha);

  //Corners
  var x = new Array();
  var y = new Array();
  if (genCoord) {
    x[0] = (width/2)-random(height/2);
    y[0] = (height/2)-random(height/2);
    x[1] = (width/2)-random(height/2);
    y[1] = (height/2)+random(height/2);
    x[2] = (width/2)+random(height/2);
    y[2] = (height/2)-random(height/2);
    x[3] = (width/2)+random(height/2);
    y[3] = (height/2)+random(height/2);
  }
  else {
    for (var i = 0; i < 4; i++) {
      x[i] = random(width);
      y[i] = random(height);
    }
  }
  p[0] = createVector(x[0], y[0]);
  p[1] = createVector(x[1], y[1]);
  p[2] = createVector(x[2], y[2]);
  p[3] = createVector(x[3], y[3]);

  //Stepping Lines
  for (var i = 0; i < numlines; ++i) {
    s1[i] = p5.Vector.lerp(p[0], p[1], i/(numlines-1));
  }
  for (var i = 0; i < numlines; ++i) {
    s2[i] = p5.Vector.lerp(p[2], p[3], i/(numlines-1));
  }

  //Motion
  var xvel, yvel;
  if (randir) {
    xvel = random(-maxVel, maxVel);
    yvel = random(-maxVel, maxVel);
  }
  else{
    xvel = 0;
    yvel = random(0, -maxVel);
  }
  m = createVector(xvel, yvel);
  mAcc = createVector(0,0);

  //Amplitude
  if (!controlAmp) {
    amplitude = minAmp+abs(randomGaussian())*(maxAmp-minAmp);
  }

  //Generate Lines
  for (var i = 0; i < numlines; ++i) {
    lines[i] = new Line2(s1[i], s2[i], reslines, i);
  }
}

function draw() {
  background(bg);
  stroke(str);

  //Draw
  for (var i = 0; i < numlines; ++i) {
    lines[i].draw();
    lines[i].update();
  }

  //Motion
  if (motion) {
    mAcc.add(m);
  }

  //Timer
  if (timed && millis() > end) {
    init2();
  }
}

function windowResized() {
  resizeCanvas(windowWidth, windowHeight);
  background(bg);
  init2();
}

function mousePressed() {
  if (mouseButton == LEFT) {
    if (controlAmp) {
      amplitude = map(mouseY, 0, windowHeight, minAmp-safeAmp, maxAmp+safeAmp)
      amplitude = constrain(amplitude, minAmp, maxAmp);
    }
    init2();
  }
  // prevent default
  //return false;
}

function touchStarted() {
    if (controlAmp) {
      amplitude = map(touchY, 0, windowHeight, minAmp-safeAmp, maxAmp+safeAmp)
      amplitude = constrain(amplitude, minAmp, maxAmp);
    }
    init2();
  // prevent default
  //return false;
}


function coin() {
  if (random(1)>0.5) return true;
  else return false;
}


function Line2 (p1_, p2_, divs_, step_) {
  this.p1 = p1_;
  this.p2 = p2_;
  this.divs = divs_;
  this.step = step_;

  //Calc
  this.p = p5.Vector.sub(this.p1, this.p2);
  this.pPerp = this.p.copy();
  this.pPerp.rotate(HALF_PI);

  this.a = this.p.heading();
  this.aPerp = this.pPerp.heading();

  this.vPerp = p5.Vector.fromAngle(this.aPerp);

  //Generate
  this.points = new Array(); //divs
  this.generateVectors();
}

Line2.prototype.generateVectors = function() {
  for (var i = 0; i < this.divs; ++i) {
    var n = (noise((i * lineRes) + mAcc.x, (this.step * stepRes) + mAcc.y) - 0.5) * 2;
    // var mod = pow( sin(i*PI/(this.divs-1)), edgeCalm);
    // var mod2 = pow( sin(this.step*PI/(numlines-1)), edgeCalm);
    // var sizedamp = width/1920;

    this.points[i] = p5.Vector.lerp(this.p1, this.p2, i/(this.divs-1));
    this.points[i].add(p5.Vector.mult(this.vPerp, n*amplitude));
  }
}

Line2.prototype.draw = function() {
  beginShape();
  for (var i = 0; i < this.divs; ++i) {
    curveVertex(this.points[i].x, this.points[i].y);
  }
  endShape();
}

Line2.prototype.update = function() {
  this.generateVectors();
}

/*
  The MIT License (MIT)

  Copyright (c) 2015 CHRISTOPHER MILLS

  Permission is hereby granted, free of charge, to any person obtaining a copy
  of this software and associated documentation files (the "Software"), to deal
  in the Software without restriction, including without limitation the rights
  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
  copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in all
  copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
  SOFTWARE.
*/
