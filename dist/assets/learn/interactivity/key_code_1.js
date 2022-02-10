var key_code_1_s = function( p ) {

  p.setup = function() {
    p.createCanvas(100, 100);
    p.stroke(0);
  }

  p.draw = function() {
    if (p.keyIsPressed === true) {
      var x = p.keyCode - 32;
      p.line(x, 0, x, p.height);
    }
  }

};

var key_code_1 = new p5(key_code_1_s, 'key_code_1');