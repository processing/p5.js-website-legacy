/*
 * @name Simple Feedback
 * @arialabel An example of a simple feedback effect using two buffers.
 * @description A simple feedback effect can be achieved through WEBGL mode and two graphics buffers.
 */

let pg, swap;

function setup() {
  createCanvas(710, 400);

  // this will hold our main graphic
  pg = createGraphics(710, 400, WEBGL);
  // this will hold the previous frame
  swap = createGraphics(710, 400, WEBGL);

  describe(
    'a WebGL example that achieves a simple feedback effect, displaying a slowly moving, radiating white circle.'
  );
}

function draw() {
  // draw the previous frame
  pg.texture(swap);
  pg.noStroke();  
  pg.plane(width, height);

  // draw our circle graphic on top
  pg.fill(255);
  pg.ellipse(Math.sin(millis()/200)*5, Math.cos(millis()/200)*5, 150, 150);

  // draw a slightly scaled up copy of the texture
  swap.push();
  swap.scale(1.1, 1.1);
  swap.texture(pg);
  swap.noStroke();
  swap.plane(width, height);
  swap.pop();

  // an opaque rectangle is drawn over top to control the feedback decay
  swap.fill(0, 50);
  swap.rect(-width / 2, -height / 2, width, height);

  // draw the output to the screen
  image(swap, 0, 0);
}
