var mouse_boxes_s = function( p ) {

  var gray = 0;

  p.setup = function() {
    p.createCanvas(100, 100);
    p.fill(0, 102);
    p.background(204);
  }

  p.draw = function() {}

  p.mouseReleased = function() {
    p.rect(p.mouseX, p.mouseY, 33, 33);
  }

};

var mouse_boxes = new p5(mouse_boxes_s, 'mouse_boxes');