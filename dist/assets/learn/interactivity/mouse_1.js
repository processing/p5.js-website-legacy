var mouse_1_s = function( p ) {

  p.setup = function() {
    p.createCanvas(100, 100);
    p.noStroke();
  }

  p.draw = function() {
    p.background(126);
    p.ellipse(p.mouseX, p.mouseY, 33, 33);
  }

};

var mouse_1 = new p5(mouse_1_s, 'mouse_1');