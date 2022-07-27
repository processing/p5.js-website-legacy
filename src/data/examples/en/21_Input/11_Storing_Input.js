/*
 * @name Storing Input
 * @arialabel User draws white circles on a fuschia background. Circles fade in color as the next circle is drawn.
 * @description Move the mouse across the screen to
 * change the position of the circles. The positions
 * of the mouse are recorded into an array and played
 * back every frame. Between each frame, the newest
 * value are added to the end of each array and the
 * oldest value is deleted.
 */
let num = 60;
let mx = [];
let my = [];

function setup() {
  createCanvas(720, 400);
  noStroke();
  fill(255, 153);
  for (let i = 0; i < num; i++) {
    mx.push(i);
    my.push(i);
  }
}

function draw() {
  background(237, 34, 93);

  // Cycle through the array, using a different entry on each frame.
  // Using modulo (%) like this is faster than moving all the values over.
  let which = frameCount % num;
  mx[which] = mouseX;
  my[which] = mouseY;

  for (let i = 0; i < num; i++) {
    // which+1 is the smallest (the oldest in the array)
    let index = (which + 1 + i) % num;
    ellipse(mx[index], my[index], i, i);
  }
}
