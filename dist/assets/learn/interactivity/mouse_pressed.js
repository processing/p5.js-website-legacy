var mouse_pressed_s = function( p ) {

  var gray = 0;

  p.setup = function() {
    p.createCanvas(100, 100);
  }

  p.draw = function() {
    p.background(gray);
  }

  p.mousePressed = function() {
    gray += 20;
  }

};

var mouse_pressed = new p5(mouse_pressed_s, 'mouse_pressed');