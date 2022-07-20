var FRAME_RATE = 50;
var MY_RADIUS = 10;
var MAX_SPEED = 10;
var walkerManagers = [];

function Walker(x, y, radius, index) {
  this.x = x;
  this.y = y;
  this.radius = radius;
  this.index = index;
}

Walker.prototype.update = function(time) {
  this.x += (sin(this.index + time) + map(noise(time, this.index), 0, 1, -2, 2));
  this.y += (cos(this.index + time) + map(noise(time, this.index), 0, 1, -2, 2));
  this.radius -= 0.08;
}

Walker.prototype.render = function() {
  noStroke();
  fill(206, 33, 89, 90);
  ellipse(this.x, this.y, this.radius + 2, this.radius + 2);
  fill(206, 33, 89);
  ellipse(this.x, this.y, this.radius, this.radius);
}

function WalkerManager(x, y) {
  this.x = x;
  this.y = y;
  this.loc = createVector(random(x), random(y));
  this.loc.x = constrain(this.loc.x, MY_RADIUS, width - MY_RADIUS);
  this.loc.y = constrain(this.loc.y, MY_RADIUS, height - MY_RADIUS);
  this.noff = createVector(random(10), random(10));
  this.counter = 0;
  this.history = [];
}

WalkerManager.prototype.walk = function (time) {

  if (isMousePressed) {
    var easing = createVector(mouseX, mouseY).sub(this.loc).mult(0.06);
    this.loc.add(easing);
  } else {
    var lerpX = map(noise(this.noff.y, this.noff.x), 0, 1, MAX_SPEED * -1, MAX_SPEED);
    var lerpY = map(noise(this.noff.x, this.noff.y), 0, 1, MAX_SPEED * -1, MAX_SPEED);

    this.loc.add(createVector(lerpX, lerpY));
    this.loc.x = constrain(this.loc.x, MY_RADIUS, width - MY_RADIUS);
    this.loc.y = constrain(this.loc.y, MY_RADIUS, height - MY_RADIUS);

    var nLerp = map(noise(this.counter), 0, 1, 0, 0.01);
    this.noff.add(nLerp, nLerp);
  }

  this.radius = noise(time) * 40;
  this.history.push(new Walker(this.loc.x, this.loc.y, this.radius, this.counter));
  this.counter++;
};

WalkerManager.prototype.update = function(time) {
  this.history.forEach(function(walker, index) {
    if (index === this.history.length - 1) {
      return;
    }
    walker.update(time);
    if (walker.radius <= 0) {
      this.history.splice(index, 1);
    }
  }.bind(this));
}

WalkerManager.prototype.render = function () {
  this.history.forEach(function(walker, index) {
    walker.render();
  });
  var lastWalker = this.history[this.history.length - 1];
  var radius = Math.min(lastWalker.radius + 6, MY_RADIUS * 2);
  fill(206, 33, 89, 90);
  ellipse(lastWalker.x, lastWalker.y, radius, radius);
};

function setup() {
  createCanvas(windowWidth, windowHeight);
  frameRate(FRAME_RATE);
  background(255);
  for(var i = 0; i < 1; i++) {
    walkerManagers.push(new WalkerManager(width, height));
  }
}

function draw() {
  background(255);
  walkerManagers.forEach(function(walkerManager) {
    walkerManager.walk(frameCount * 0.1);
    walkerManager.render();
    walkerManager.update(frameCount * 0.1);
  });
}