var invert_mouse_s = function( p ) {

  p.setup = function() {
    p.createCanvas(100, 100);
    p.noStroke();
  }

  p.draw = function() {
    var x = p.mouseX;
    var y = p.mouseY;
    var ix = p.width - p.mouseX; // Inverse X
    var iy = p.height - p.mouseY; // Inverse Y
    p.background(126);
    p.fill(255, 150);
    p.ellipse(x, p.height/2, y, y);
    p.fill(0, 159);
    p.ellipse(ix, p.height/2, iy, iy);
  }

};

var invert_mouse = new p5(invert_mouse_s, 'invert_mouse');