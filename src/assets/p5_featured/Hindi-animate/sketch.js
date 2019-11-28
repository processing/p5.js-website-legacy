let img;
let offset = 0;
let easing = 0.05;

function setup() {
  createCanvas(1000,1000);
  img = loadImage('assets/bg.jpg'); // Load an image into the program
}

function draw() {
  image(img, 0, 0); // Display at full opacity
  let dx = mouseX - img.width / 2 - offset;
  offset += dx * easing;
  tint(255, 127); // Display at half opacity
  image(img, offset, 0);
}
