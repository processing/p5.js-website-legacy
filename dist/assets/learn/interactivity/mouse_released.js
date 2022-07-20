var mouse_released_s = function( p ) {

  var gray = 0;

  p.setup = function() {
    p.createCanvas(100, 100);
  }

  p.draw = function() {
    p.background(gray);
  }

  p.mouseReleased = function() {
    gray += 20;
  }

};

var mouse_released = new p5(mouse_released_s, 'mouse_released');