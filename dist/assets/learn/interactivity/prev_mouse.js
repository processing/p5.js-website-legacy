var prev_mouse_s = function( p ) {

  p.setup = function() {
    p.createCanvas(100, 100);
    p.strokeWeight(8);
  }

  p.draw = function() {
    p.background(204);
    p.line(p.mouseX, p.mouseY, p.pmouseX, p.pmouseY);
  }

};

var prev_mouse = new p5(prev_mouse_s, 'prev_mouse');