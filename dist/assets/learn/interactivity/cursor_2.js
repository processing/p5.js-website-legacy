var cursor_2_s = function( p ) {

  p.setup = function() {
    p.createCanvas(100, 100);
  }

  p.draw = function() {
    p.background(204);
    if (p.mouseIsPressed == true) {
      p.cursor();
    } else {
      p.noCursor();
    }
  }

};

var cursor_2 = new p5(cursor_2_s, 'cursor_2');