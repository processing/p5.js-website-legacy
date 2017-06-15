function Brick(pos, r) {
  if (pos) {
    this.pos = pos.copy();
  } else {
    this.pos = createVector(random(width), random(height - 400));
  }
  if (r) {
    this.r = r * 0.5;
  } else {
    this.r = random(20, 80);
  }

  this.total = 6;
  this.offset = [];
  this.index = Math.floor(random(5));
  this.colors = ['#6CD9CC', '#FB6578', '#FE5A8F', '#FC9574', '#9A8DF2'];
  this.miniDrops = [];

  this.display = function() {
    push();
    stroke(this.colors[this.index]);
    strokeWeight(2);
    translate(this.pos.x, this.pos.y);
    beginShape();
    for (var i = 0; i < this.total; i++) {
      var angle = map(i, 0, this.total, 0, TWO_PI);
      var r = this.r;
      var x = r * cos(angle);
      var y = r * sin(angle);
      vertex(x, y);
    }
    endShape(CLOSE);
    stroke(0);
    strokeWeight(1);
    pop();

  }

  this.shrink = function() {
    var newB = [];
    newB[0] = new Brick(this.pos, this.r);
    // newB[1] = new Brick(this.pos, this.r);
    return newB;
  }

}
