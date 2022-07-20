var event_1_s = function( p ) {

  var frame = false;

  p.setup = function() {
    p.createCanvas(100, 100);
  }

  p.draw = function() {
    if (frame > 120) { // If 120 frames since the mouse
      p.noLoop(); // was pressed, stop the program
      p.background(0); // and turn the background black.
    } else { // Otherwise, set the background
      p.background(204); // to light gray and draw lines
      p.line(p.mouseX, 0, p.mouseX, 100); // at the mouse position
      p.line(0, p.mouseY, 100, p.mouseY);
      frame++;
    }
  }

  p.mousePressed = function() {
    frame = 0;
    p.loop();
  }

};

var event_1 = new p5(event_1_s, 'event_1');