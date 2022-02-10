var corners_s = function( p ) {

  p.setup = function() {
    p.createCanvas(100, 100);
    p.noStroke();
    p.fill(0);
  }

  p.draw = function() {
    p.background(204);
    if ((p.mouseX <= 50) && (p.mouseY <= 50)) {
      p.rect(0, 0, 50, 50); // Upper-left
    } else if ((p.mouseX <= 50) && (p.mouseY > 50)) {
      p.rect(0, 50, 50, 50); // Lower-left
    } else if ((p.mouseX > 50) && (p.mouseY <= 50)) {
      p.rect(50, 0, 50, 50); // Upper-right
    } else {
      p.rect(50, 50, 50, 50); // Lower-right
    }
  }

};

var corners = new p5(corners_s, 'corners');