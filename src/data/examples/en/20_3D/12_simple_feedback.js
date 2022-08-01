/*
 * @name Simple Feedback
 * @arialabel An example of a simple feedback effect using two buffers.
 * @description A simple feedback effect can be achieved through WEBGL mode and two graphics buffers.
 */

let pg, swap;

function setup() {
  createCanvas(710, 400);

  // this will hold the previous frame
  pg = createGraphics(710, 400, WEBGL);
  // this will hold our main graphic
  swap = createGraphics(710, 400, WEBGL);

  describe(
    'a WebGL example that achieves a simple feedback effect, displaying a slowly moving, radiating white sphere.'
  );
}

function draw() {
  // clears and resets the p5.Graphics so that 3D objects draw correctly
  pg.reset();

  // draw the previous frame
  pg.texture(swap);
  pg.noStroke();
  pg.plane(width, height);

  // draw our sphere on top
  pg.push();
  // slowly move the sphere in a circle
  pg.translate(sin(millis() / 200) * 5, cos(millis() / 200) * 5, 0);
  pg.fill(255);
  pg.sphere(90);
  pg.pop();

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
