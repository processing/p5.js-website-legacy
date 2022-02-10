var key_2_s = function( p ) {

  var x = 20;
  p.setup = function() {
    p.createCanvas(100, 100);
    p.strokeWeight(4);
  }

  p.draw = function() {
    p.background(204);
    if (p.keyIsPressed == true) { // If the key is pressed
      x++; // add 1 to x
    }
    p.line(x, 20, x-60, 80);
  }

};

var key_2 = new p5(key_2_s, 'key_2');