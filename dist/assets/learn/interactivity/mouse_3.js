var mouse_3_s = function( p ) {

  p.setup = function() {
    p.createCanvas(100, 100);
    p.noStroke();
  }

  p.draw = function() {
    p.background(126);
    p.ellipse(p.mouseX, 16, 33, 33); // Top circle
    p.ellipse(p.mouseX/2, 50, 33, 33); // Middle circle
    p.ellipse(p.mouseX*2, 84, 33, 33); // Bottom circle
  }

};

var mouse3 = new p5(mouse_3_s, 'mouse_3');