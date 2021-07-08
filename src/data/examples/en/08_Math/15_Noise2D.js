/*
 * @name Noise2D
 * @frame 710,400 (optional)
 * @description Create a 2D noise with different parameters.
 */

let noiseVal;
let noiseScale = 0.02;

function setup() {
  createCanvas(640, 360);
}

function drawNoise(x, y, w, h) {
  for (let yp = y; yp < y + h; yp++) {
    let yindex = yp * width;
    for (let xp = x; xp < x + w; xp++) {
      let noiseVal =
        noise((mouseX + xp) * noiseScale, (mouseY + yp) * noiseScale) * 255;

      let xindex = xp;
      let index = 4 * (yindex + xindex);
      pixels[index] = noiseVal;
      pixels[index + 1] = noiseVal;
      pixels[index + 2] = noiseVal;
      pixels[index + 3] = 255;
    }
  }
}

function draw() {
  background(0);

  loadPixels();

  // Draw the left half of image
  noiseDetail(2, 0.2);
  drawNoise(0, 0, width / 2, height - 30);

  // Draw the right half of image
  noiseDetail(5, 0.5);
  drawNoise(width / 2, 0, width / 2, height - 30);

  updatePixels();

  //Show the details of two partitions
  textSize(18);
  fill(255, 255, 255);
  text("Noise2D with 2 octaves and 0.2 falloff", 10, 350);
  text("Noise2D with 5 octaves and 0.5 falloff", 330, 350);
}
