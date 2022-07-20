var region_1_s = function( p ) {

  p.setup = function() {
    p.createCanvas(100, 100);
    p.noStroke();
    p.fill(0);
  }

  p.draw = function() {
    p.background(204);
    if (p.mouseX < 50) {
      p.rect(0, 0, 50, 100); // Left
    } else {
      p.rect(50, 0, 50, 100); // Right
    }
  }

};

var region_1 = new p5(region_1_s, 'region_1');