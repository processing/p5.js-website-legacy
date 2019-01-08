var lines = [];
var x;
var y;

function setup() {
  createCanvas(windowWidth, windowHeight);

  var gap = 10;
  for (var y = 0; y < height - gap; y += gap * 2) {
    for (var x = 0; x < width; x += gap * 2) {
      lines.push(new Shape(x, y));
    }
  }

  // println(width);
  // println(height);
  // println(lines.length);


}

function draw() {
  background(255);

  for (var i = 0; i < lines.length; i++) {
    // update

    // check
    lines[i].intersects(); // rollover

    // display
    lines[i].display();

  }

  // println(lines.length);

}


function Shape(x, y) {

  this.x = x;
  this.y = y;
  this.r = 200;
  this.scale = 1.0;

  var r = map(this.y, 0, height, 10, 255);
  var g = map(this.x, 0, width, 10, 255);
  var b = random(50, 100);
  this.col = color(r, g, b, 10);

  this.state = false;
  this.grow = 0;
  this.turn = 0;

  this.display = function(x, y) {
    noStroke();
    fill(this.col);
    rect(this.x, this.y, (5 * this.scale) + this.grow, (5 * this.scale) + this.grow);
  }

  this.intersects = function() {
    var d = dist(this.x, this.y, mouseX, mouseY);
    if (d < this.r) {
      this.grow = 1.5 * this.scale;
      this.state = true;
      this.col = this.col;
      this.scale = lerp(this.scale, 15, 0.2);
      return true;
    } else {
      this.state = false;
      this.col = this.col;
      this.scale = lerp(this.scale, 1.5, 0.05);
      return false;
    }
  }
}


// function mousePressed() {
//   for (var i = lines.length - 1; i >= 0; i--) {
//     if (lines[i].intersects()) {
//       lines.splice(i, 1);
//     }
//   }
// }