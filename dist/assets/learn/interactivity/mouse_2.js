var mouse_2_s = function( p ) {

  p.setup = function() {
    p.createCanvas(100, 100);
    p.noStroke();
  }

  p.draw = function() {
    p.background(126);
    p.ellipse(p.mouseX, 16, 33, 33); // Top circle
    p.ellipse(p.mouseX+20, 50, 33, 33); // Middle circle
    p.ellipse(p.mouseX-20, 84, 33, 33); // Bottom circle
  }

};

var mouse_2 = new p5(mouse_2_s, 'mouse_2');