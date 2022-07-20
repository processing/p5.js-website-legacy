var key_var_s = function( p ) {

  p.setup = function() {
    p.createCanvas(100, 100);
    p.textSize(60);
    p.fill(255);
  }

  p.draw = function() {
    p.background(0);
    p.text(p.key, 20, 75); // Draw at coordinate (20,75)
  }

};

var key_var = new p5(key_var_s, 'key_var');