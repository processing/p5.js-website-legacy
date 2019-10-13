let scale;

function setup() {
  size(640, 360);
  noStroke();
  scale = width/20;
}

function draw() { 
  for (let i = 0; i < scale; i = i + i) {
    colorMode(RGB, (i+1) * scale * 10);
    fill(millis()%((i+1) * scale * 10));
    rect(i*scale, 0, scale, height);
  }
}