var key_1_s = function( p ) {

  p.setup = function() {
    p.createCanvas(100, 100);
    p.strokeWeight(4);
  }

  p.draw = function() {
    p.background(204);
    if (p.keyIsPressed === true) { // If the key is pressed,
      p.line(20, 20, 80, 80); // draw a line
    } else { // Otherwise,
      p.rect(40, 40, 20, 20); // draw a rectangle
    }
  }

};

var key_1 = new p5(key_1_s, 'key_1');