var and_s = function( p ) {

  p.setup = function() {
    p.createCanvas(100, 100);
    p.noStroke();
    p.fill(0);
  }

  p.draw = function() {
    p.background(204);
    if ((p.mouseX > 40) && (p.mouseX < 80) &&
      (p.mouseY > 20) && (p.mouseY < 80)) {
      p.fill(255);
    } else {
      p.fill(0);
    }
    p.rect(40, 20, 40, 60);
  }

};

var and = new p5(and_s, 'and');