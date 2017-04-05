/* The Sound of an Effect (p5js version) by Hsinyu Lin, 2017 */

var f, f1;
var pos = 0.00003;
var capture;
var button;

function setup() {
 createCanvas(windowWidth, windowHeight);
 capture = createCapture(VIDEO);
 capture.hide();
 imageMode(CENTER);
 button = createButton('hide sketch');
 button.position(10, 44);
 button.mousePressed(toggleSketch);
}

function draw() {
 // background(255);
 translate(width / 2, height / 2);
 for (f = 0; f < windowWidth; f += 85) {
  for (f1 = 0; f1 < windowHeight; f1 += 85) {
   rotate(PI / pos);
   image(capture, f + random(1, 10), f1 + random(1, 10), 65, 65, f + random(0.5, 1), f1, [80 + random(1, 3)], [80]);
  }
 }
}

function mouseWheel(event) {
 print(event.delta);
 pos += event.delta;
 console.log(pos);
}

function toggleSketch() {
  console.log(canvas.style.display)
  if (canvas.style.display === 'none') {
    canvas.style.display = 'block';
    button.html('hide sketch');
  } else {
    canvas.style.display = 'none';
    button.html('show sketch');
  }
}