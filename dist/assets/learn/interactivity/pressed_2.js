var pressed_2_s = function( p ) {

  p.setup = function() {
    p.createCanvas(100, 100);
    p.noStroke();
    p.fill(0);
  }

  p.draw = function() {
    p.background(204);
    if (p.mouseButton == p.LEFT) {
      p.fill(0); // Black
    } else if (p.mouseButton == p.RIGHT) {
      p.fill(255); // White
    } else {
      p.fill(126); // Gray
    }
    p.rect(25, 25, 50, 50);
  }

};

var pressed_2 = new p5(pressed_2_s, 'pressed_2');