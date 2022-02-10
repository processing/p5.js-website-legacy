var key_eq_a_s = function( p ) {

  var x = 20;
  p.setup = function() {
    p.createCanvas(100, 100);
    p.strokeWeight(4);
    p.stroke(255);
  }

  p.draw = function() {
    p.background(204);
    p.background(0);
    // If the 'A' key is pressed draw a line
    if ((p.keyIsPressed === true) && (p.key == 'A')) {
      p.line(50, 25, 50, 75);
    } else { // Otherwise, draw an ellipse
      p.ellipse(50, 50, 50, 50);
    }
  }

};

var key_eq_a = new p5(key_eq_a_s, 'key_eq_a');