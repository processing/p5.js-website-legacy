var key_code_2_s = function( p ) {

  var angle = 20;

  p.setup = function() {
    p.createCanvas(100, 100);
    p.stroke(0);
  }

  p.draw = function() {
    p.background(204);
    if (p.keyIsPressed === true) {
      if ((p.keyCode >= 32) && (p.keyCode <= 126)) {
        // If the key is alphanumeric, // use its value as an angle
        angle = (p.keyCode - 32) * 3;
      }
    }
    p.arc(50, 50, 66, 66, 0, p.radians(angle));
  }

};

var key_code_2 = new p5(key_code_2_s, 'key_code_2');