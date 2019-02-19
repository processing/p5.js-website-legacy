var numBalls = 24;
var spring = 0.05;
var gravity = -0.00005;
var friction = -0.5;
var balls = [];
var colors;
var partners = {
  0: 13,
  1: 15,
  2: 17,
  3: 19,
  4: 21,
  5: 23,
  6: 14,
  7: 18,
  8: 22,
  9: 16,
  10: 20,
  11: 12
}

function setup() {
  createCanvas(windowWidth, windowHeight);
  var a = 255;  // change this to lighten
  colors = [
    color(228, 3, 3, a),
    color(255, 140, 0, a),
    color(255, 237, 0, a),
    color(0, 128, 38, a),
    color(0, 77, 255, a),
    color(117, 7, 135, a)
  ];
  for (var i = 0; i < numBalls; i++) {
    balls[i] = new Ball(width/2, (i%6)*height*0.133+height*0.15, 60, i, balls);
  }
  for (var i = 0; i < numBalls/2; i++) {
    balls[i].p = partners[i];
    balls[partners[i]].p = i;
    console.log('partners '+partners[i]+" "+i)
  }
  noStroke();
  noFill();
  fill(255, 204);
}

function draw() {
  background(255, 100);
  for (var i = 0; i < balls.length; i++) {
    var ball = balls[i];
    ball.collide();
    ball.move();
    ball.display();  
  }
}

 
function Ball(xin, yin, din, idin, oin) {
  this.x = xin;
  this.y = yin;
  this.diameter = din;
  this.id = idin;
  this.others = oin;
  this.vx = 0;
  this.vy = 0;
  this.collided = false;

  this.collide = function() {
    for (var i = this.id + 1; i < numBalls; i++) {
      if (this.others[i].id !== this.p) {
        var dx = this.others[i].x - this.x;
        var dy = this.others[i].y - this.y;
        var distance = sqrt(dx*dx + dy*dy);
        var minDist = this.others[i].diameter/2 + this.diameter/2;
        if (distance < minDist) {
          var angle = atan2(dy, dx);
          var targetX = this.x + cos(angle) * minDist;
          var targetY = this.y + sin(angle) * minDist;
          var ax = (targetX - this.others[i].x) * spring;
          var ay = (targetY - this.others[i].y) * spring + random(-0.01, 0.01);
          this.vx -= ax;
          this.vy -= ay;
          this.others[i].vx += ax;
          this.others[i].vy += ay;
        }
      }
    }   
  }
  
  this.move = function() {
    this.vy += gravity;
    this.x += this.vx;
    this.y += this.vy;
    if (this.x + this.diameter/2 > width) {
      this.x = width - this.diameter/2;
      this.vx *= friction; 
    }
    else if (this.x - this.diameter/2 < 0) {
      this.x = this.diameter/2;
      this.vx *= friction;
    }
    if (this.y + this.diameter/2 > height) {
      this.y = height - this.diameter/2;
      this.vy *= friction; 
    } 
    else if (this.y - this.diameter/2 < 0) {
      this.y = this.diameter/2;
      this.vy *= friction;
    }
    this.vx += (balls[this.p].x - this.x) * 0.0001;
    this.vy += (balls[this.p].y - this.y) * 0.0001;
  }
   
  this.display = function() {
    push();  
    fill(colors[this.id%6]);
    stroke(colors[this.id%6]);
    //ellipse(this.x, this.y, this.diameter, this.diameter);
    translate(this.x-50, this.y-this.diameter/2);
    scale(1.5)
    beginShape();
    vertex(50, 15); 
    bezierVertex(50, -5, 90, 5, 50, 40); 
    vertex(50, 15); 
    bezierVertex(50, -5, 10, 5, 50, 40); 
    endShape();
    pop(); 
  }
}