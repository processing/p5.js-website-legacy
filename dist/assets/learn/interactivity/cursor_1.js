var cursor_1_s = function( p ) {

  p.setup = function() {
    p.createCanvas(100, 100);
    p.strokeWeight(7);
    p.noCursor();
  }

  p.draw = function() {
    p.background(204);
    p.ellipse(p.mouseX, p.mouseY, 10, 10);
  }

};

var cursor_1 = new p5(cursor_1_s, 'cursor_1');