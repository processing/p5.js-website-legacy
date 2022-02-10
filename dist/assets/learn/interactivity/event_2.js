var event_2_s = function( p ) {

  p.setup = function() {
    p.createCanvas(100, 100);
    p.noLoop();
  }

  p.draw = function() {
    p.background(204);
    p.line(p.mouseX, 0, p.mouseX, 100);
    p.line(0, p.mouseY, 100, p.mouseY);
  }

  p.mousePressed = function() {
    p.redraw(); // Run the code in draw one time
  }

};

var event_2 = new p5(event_2_s, 'event_2');