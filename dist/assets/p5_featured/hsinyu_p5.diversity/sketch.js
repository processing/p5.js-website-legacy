/* The Sound of an Effect by Hsinyu Lin, 2017 */

/* videos */
var capture;

/* render */
var pg;
var fps = 30;

function setup() {
 createCanvas(windowWidth, windowHeight);
 pg = createGraphics(windowWidth, windowHeight, WEBGL);

 /* frameCount */
 frameRate(fps);

 /* capture video */
 capture = createCapture(VIDEO);
 capture.size(windowWidth, windowHeight);
 capture.hide();
}

function draw() {
  pg.push();
  // pg.background(255);
  pg.translate(0, 0, -20);
  //pass image as texture
  pg.texture(capture);
  pg.rotateX(frameCount/10000 * 5);
  pg.rotateY(frameCount/10000 * random(1, 5));
  pg.rotateZ(frameCount/10000 * -5);
  pg.sphere(150, 20,20);
  pg.pop();
  image(pg, 0, 0);
}

