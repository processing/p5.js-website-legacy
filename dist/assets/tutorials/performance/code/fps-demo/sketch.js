function setup() {
  createCanvas(300, 300);
}

function draw() {
  var seconds = millis() / 1000;
  var radius = map(sin(3 * seconds), -1, 1, 50, min(width, height));

  background("#191716");
  fill("#E6AF2E");
  ellipse(width / 2, height / 2, radius, radius);

  // Draw FPS (rounded to 2 decimal places) at the bottom left of the 
  // screen
  // var fps = frameRate();
  // fill(255);
  // stroke(0);
  // text("FPS: " + fps.toFixed(2), 10, height - 10);
}