function Board() {
  this.r = 160;
  this.h = 20;
  this.pos = createVector(width / 2 - this.r / 2, height - 40);
  this.isMovingLeft = false;
  this.isMovingRight = false;

  this.display = function() {
    strokeWeight(2);
    stroke('#9A8DF2');
    rect(this.pos.x, this.pos.y, this.r, this.h);
    for (var i = 0; i < this.r; i += this.h) {
      line(this.pos.x + i, this.pos.y, this.pos.x + this.h + i, this.pos.y + this.h);
    }
    stroke(0);
    strokeWeight(0);
  }

  this.update = function() {
    if (this.isMovingLeft) {
      this.move(-20);
    } else if (this.isMovingRight) {
      this.move(20);
    }
  }

  this.move = function(step) {
    this.pos.x += step;
  }

  this.checkEdges = function() {
    if (this.pos.x <= 0) this.pos.x = 0;
    else if (this.pos.x + this.r >= width) this.pos.x = width - this.r;
  }
}
