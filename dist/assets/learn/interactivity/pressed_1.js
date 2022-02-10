var pressed_1_s = function( p ) {

  p.setup = function() {
    p.createCanvas(100, 100);
    p.noStroke();
    p.fill(0);
  }

  p.draw = function() {
    p.background(204);
    if (p.mouseIsPressed == true) {
      p.fill(255); // White
    } else {
      p.fill(0); // Black
    }
    p.rect(25, 25, 50, 50);
  }

};

var pressed_1 = new p5(pressed_1_s, 'pressed_1');