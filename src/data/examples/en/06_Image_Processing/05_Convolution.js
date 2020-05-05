/*
 * @name Convolution
 * @description Applies a convolution matrix to a portion of an image. Move mouse to apply filter to different parts of the image. This example is a port of  <a href="https://processing.org/examples/convolution.html" target="blank">Dan Shiffman's example</a> for Processing. Original comments written by Dan.
 * <p><em><span class="small"> To run this example locally, you will need an
 * image file, and a running <a href="https://github.com/processing/p5.js/wiki/Local-server">
 * local server</a>.</span></em></p>
 */
 
let img;
let w = 120;

// It's possible to convolve the image with many different 
// matrices to produce different effects. This is a high-pass 
// filter; it accentuates the edges. 
const matrix = [ [ -1, -1, -1 ],
                 [ -1,  9, -1 ],
                 [ -1, -1, -1 ] ]; 

function preload() {
  img = loadImage('assets/moonwalk.jpg');
}

function setup() {
  createCanvas(720, 400);
}

function draw() {
  // We're only going to process a portion of the image
  // so let's set the whole image as the background first
  image(img, 0, 0);

  // Calculate the small rectangle we will process
  const xstart = constrain(mouseX - w/2, 0, img.width);
  const ystart = constrain(mouseY - w/2, 0, img.height);
  const xend = constrain(mouseX + w/2, 0, img.width);
  const yend = constrain(mouseY + w/2, 0, img.height);
  const matrixsize = 3;

  loadPixels();
  
  // Begin our loop for every pixel in the smaller image
  for (let x = xstart; x < xend; x++) {
    for (let y = ystart; y < yend; y++ ) {
      let c = convolution(x, y, matrix, matrixsize, img);
      let loc = x + y*img.width;
      pixels[loc] = c;
    }
  }
  updatePixels();
}

function convolution(x, y, matrix, matrixsize, img) {
  rtotal = 0.0;
  gtotal = 0.0;
  btotal = 0.0;
  offset = matrixsize / 2;
  for (i = 0; i < matrixsize; i++){
    for (j= 0; j < matrixsize; j++){
      // What pixel are we testing
      xloc = x+i-offset;
      yloc = y+j-offset;
      loc = xloc + img.width*yloc;
      // Make sure we haven't walked off our image, we could do better here
      loc = constrain(loc,0,img.pixels.length-1);
      // Calculate the convolution
      rtotal += (red(img.pixels[loc]) * matrix[i][j]);
      gtotal += (green(img.pixels[loc]) * matrix[i][j]);
      btotal += (blue(img.pixels[loc]) * matrix[i][j]);
    }
  }
  // Make sure RGB is within range
  rtotal = constrain(rtotal, 0, 255);
  gtotal = constrain(gtotal, 0, 255);
  btotal = constrain(btotal, 0, 255);
  // Return the resulting color
  return color(rtotal, gtotal, btotal);
}