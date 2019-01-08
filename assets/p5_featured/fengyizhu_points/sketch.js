var BEI = 0;
var DONGBEI = 1;
var DONG = 2;
var DONGNAN = 3;
var NAN = 4;
var XINAN = 5;
var XI = 6;
var XIBEI = 7;

var stepSize = 1;
var spacing = 10;

var d;
var counter = 0;


points = [];

function windowResized() {
  resizeCanvas(windowWidth, windowHeight);
}

function setup() {
  var c = createCanvas(windowWidth, windowHeight);
  c.parent('home-sketch-frame');
  background(0);
  for (var i = 0; i < 300; i++) {
    points.push(new Point(int(800 / (spacing * 2)), int(800 / (spacing * 2))));
  }
}

function mousePressed() {
  background(255);
}

function draw() {
  counter++;
  // print(counter);
  //Behavior 6
  if (counter < 200) {
    var alp = map(counter, 0, 700, 10, 0.8);
  } else {
    alp = 0.8;
  }
  background(255,alp);

  //Behavoir 5
  if (counter > 8100) {
    var z = map(counter, 8100, 15200, 0.8, 255);
  } else {
    z = 0.8;
  }
  
  background(255, z);
  
  push();
  translate(windowWidth / 2 - 600, windowHeight / 2 - 600);
  scale(1.5);

  for (var i = 0; i < points.length; i++) {
    points[i].update();
    points[i].display();
    points[i].setPrevPosition();
  }
  pop();
}

////////////////////////////////////////// Point ////////////////////////////////////////////

function Point(_x, _y) {
  this.x = _x;
  this.y = _y;
  this.px;
  this.py;
  //this.color = color(13, 86, 97);
  this.color = color(random(150,255), 195, 205);

  this.display = function() {
    push();
    //Behavior 3
    if (counter > 3700) {
      var r = map(counter, 3700, 5200, random(150,255), 242);
      var g = map(counter, 3700, 5200, 195, 21);
      var b = map(counter, 3700, 5200, 205, 91);
      stroke(r, g, b);
    } else {
      stroke(this.color);
    }
    //Behavior 1
    if (counter > 1200) {
      strokeWeight(1.9);
    } else {
      var l = map(counter, 0, 1200, 0.01, 1.899);
      strokeWeight(l);
    }
    line(this.x * spacing, this.y * spacing, this.px * spacing, this.py * spacing);
    pop();

    noStroke(0);
    //Behavior 2
    var d;
    if (counter <= 1200) {
      d = 0.1;
    } else {
      d = map(counter, 1200, 3200, 0.1, 7.999);
    }
    if (counter > 3200) {
      d = 8;
    }
    fill(255);
    smooth();
    ellipse(this.x * spacing, this.y * spacing, d, d);
  }

  this.setPrevPosition = function() {
    this.px = this.x;
    this.py = this.y;
  }
  this.update = function() {
    //Behavior 0 
    var direction = int(random(0, 8));

    if (direction == BEI) {
      this.y -= stepSize;
    } else if (direction == DONGBEI) {
      this.x += stepSize;
      this.y -= stepSize;
    } else if (direction == DONG) {
      this.x += stepSize;
    } else if (direction == DONGNAN) {
      this.x += stepSize;
      this.y += stepSize;
    } else if (direction == NAN) {
      this.y += stepSize;
    } else if (direction == XINAN) {
      this.x -= stepSize;
      this.y += stepSize;
    } else if (direction == XI) {
      this.x -= stepSize;
    } else if (direction == XIBEI) {
      this.x -= stepSize;
      this.y -= stepSize;
    }
    if (this.x > 1500 / spacing - 1) {
      this.x = 1500 / spacing - 2;
    }
    if (this.x < -700) {
      this.x = -700;
    }
    if (this.y < -100) {
      this.y = -100;
    }
    if (this.y > 900 / spacing - 1) {
      this.y = 900 / spacing - 2;
    }
  }
}