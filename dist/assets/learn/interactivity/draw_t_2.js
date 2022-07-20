var draw_t_2_s = function( p ) {

  var drawT = false;

  p.setup = function() {
    p.createCanvas(100, 100);
    p.noStroke();
  }

  p.draw = function() {
    p.background(204);
    if (drawT == true) {
      p.rect(20, 20, 60, 20);
      p.rect(39, 40, 22, 45);
    }
  }

  p.keyPressed = function() {
    if ((p.key == 'T') || (p.key == 't')) {
      drawT = true;
    }
  }

  p.keyReleased = function() {
    drawT = false;
  }

};

var draw_t_2 = new p5(draw_t_2_s, 'draw_t_2');