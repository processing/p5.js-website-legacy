var region_2_s = function( p ) {

  p.setup = function() {
    p.createCanvas(100, 100);
    p.noStroke();
    p.fill(0);
  }

  p.draw = function() {
    p.background(204);
    if (p.mouseX < 33) {
      p.rect(0, 0, 33, 100); // Left
    } else if (p.mouseX < 66) {
      p.rect(33, 0, 33, 100); // Middle
    } else {
      p.rect(66, 0, 33, 100); // Right
    }
  }

};

var region_2 = new p5(region_2_s, 'region_2');