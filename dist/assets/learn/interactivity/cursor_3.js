var cursor_3_s = function( p ) {

  p.setup = function() {
    p.createCanvas(100, 100);
    p.noCursor();
  }

  p.draw = function() {
    p.background(204);
    if (p.mousePressed == true) {
      p.cursor(p.HAND);  // Draw cursor as hand
    } else {
      p.cursor(p.CROSS); // Draw cursor as cross
    }
    p.line(p.mouseX, 0, p.mouseX, p.height);
    p.line(0, p.mouseY, p.height, p.mouseY);
  }

};

var cursor_3 = new p5(cursor_3_s, 'cursor_3');