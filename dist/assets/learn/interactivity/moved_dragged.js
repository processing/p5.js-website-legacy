var moved_dragged_s = function( p ) {

  var dragX, dragY, moveX, moveY;

  p.setup = function() {
    p.createCanvas(100, 100);
    p.noStroke();
  }

  p.draw = function() {
    p.background(204);
    p.fill(0);
    p.ellipse(dragX, dragY, 33, 33); // Black circle
    p.fill(153);
    p.ellipse(moveX, moveY, 33, 33); // Gray circle
  }

  p.mouseMoved = function() { // Move gray circle
    moveX = p.mouseX;
    moveY = p.mouseY;
  }

  p.mouseDragged = function() { // Move black circle
    dragX = p.mouseX;
    dragY = p.mouseY;
  }

};

var moved_dragged = new p5(moved_dragged_s, 'moved_dragged');