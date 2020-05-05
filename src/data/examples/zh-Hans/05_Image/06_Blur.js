/*
 * @name Blur
 * @description A low-pass filter that blurs an image. This program analyzes every pixel in an image and blends it with the neighboring pixels to blur the image.
 * <br><br><span class="small"><em>This example is ported from the <a href="https://processing.org/examples/blur.html">Blur example</a>
 * on the Processing website</em></span>
 */
var v = 1.0 / 9.0;
var kernel = [[ v, v, v ], [ v, v, v ], [ v, v, v ]]; // The group of pixels surrounding the pixel the program is trying to blur

function preload() {
  img = loadImage("assets/rover.png"); // Load the original image
}

function setup() {
  createCanvas(710, 400);
  noLoop();
}

function draw() {
  image(img, 0, 0);
  line(10, 10, 90, 90);
  img.loadPixels();
  
  edgeImg = createImage(img.width, img.height);
  edgeImg.loadPixels();
  
  for (let x = 1; x < img.width; x++) {
    for (let y = 1; y < img.height; y++) {
      var sum = 0; // Kernel sum for this pixel
      for (kx = -1; kx <= 1; kx++) {
        for (ky = -1; ky <= 1; ky++) {
          var xpos = x + kx;
          var ypos = y + ky;
          
          // Since image is grayscale, red/green/blue are identical
          var val = red(img.get(xpos, ypos));
          sum += kernel[kx+1][ky+1] * val;
        }
      }
      edgeImg.set(x, y, color(sum));
    }
  }
  edgeImg.updatePixels();
  
  image(edgeImg, img.width, 0);
}