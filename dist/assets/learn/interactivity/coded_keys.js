var coded_keys_s = function( p ) {

  var y = 35;

  p.setup = function() {
    p.createCanvas(100, 100);
    p.stroke(0);
  }

  p.draw = function() {
    p.background(204);
    p.line(10, 50, 90, 50);
    if (p.keyCode == p.UP_ARROW) {
      y = 20;
    } else if (p.keyCode == p.DOWN_ARROW) {
      y = 50;
    } else {
      y = 35;
    }
    p.rect(25, y, 50, 30);
  }

};

var coded_keys = new p5(coded_keys_s, 'coded_keys');