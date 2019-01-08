// Chrome, 100x iterations
//  resizeBeforeRuntime took:     7282.69ms.
//  sampleImage took:             8371.29ms.
//  imageResize took:             7530.42ms.
//  iterativeImageResize took:    7680.36ms.

// NOTE: this code disregards pixel density

// Image sources: 
//  - steve lodefink, blackberry
//    https://flic.kr/p/2sGVow
//    Creative Commons Attribution License (Share, Adapt, Commercial)
//  - floral pattern
//    http://www.publicdomainpictures.net/view-image.php?image=51731&picture=vintage-floral-wallpaper-pattern
//    Creative Commons Public Domain 


p5.disableFriendlyErrors = true;

var originalImage;
var preshrunkImage;

var scale;
var stepSize;

var iterations = 1;

function preload() {
  originalImage = loadImage("floral-original.jpg");
  preshrunkImage = loadImage("floral-tiny-sharpened.jpg");
}

function setup() {
  createCanvas(originalImage.width * 4 , originalImage.height);
  background(255);

  stepSize = originalImage.width / preshrunkImage.width;
  scale = 1 / stepSize;

  resizeBeforeRuntime();
  translate(originalImage.width, 0);
  sampleImage();
  translate(originalImage.width, 0);
  imageResize();
  translate(originalImage.width, 0);
  iterativeImageResize();

}

function resizeBeforeRuntime() {
  var start = millis();

  var w = preshrunkImage.width;
  var h = preshrunkImage.height;

  // Iterations
  for (var i = 0; i < iterations; i++) {

    // Get the pixel data
    preshrunkImage.loadPixels();

    // Iterate through pixels
    for (var x = 0; x < w; x++) {
      for (var y = 0; y < h; y++) {
        var index = 4 * (y * w + x);
        var r = preshrunkImage.pixels[index];
        var g = preshrunkImage.pixels[index+1];
        var b = preshrunkImage.pixels[index+2];
        var a = preshrunkImage.pixels[index+3];  
        fill(r, g, b, a);
        noStroke();
        rect(x * stepSize, y * stepSize, stepSize, stepSize);  
      }
    }

  }

  var elapsed = millis() - start;
  console.log("resizeBeforeRuntime took: " + elapsed.toFixed(2) + "ms.")
}

function sampleImage() {
  var start = millis();

  var w = originalImage.width;
  var h = originalImage.height;

  // Iterations
  for (var i = 0; i < iterations; i++) {

    // Get the pixel data
    originalImage.loadPixels();

    // Iterate through pixels
    for (var x = 0; x < w; x += stepSize) {
      for (var y = 0; y < h; y += stepSize) {
        var index = 4 * (y * w + x);
        var r = originalImage.pixels[index];
        var g = originalImage.pixels[index+1];
        var b = originalImage.pixels[index+2];
        var a = originalImage.pixels[index+3];  
        fill(r, g, b, a);
        noStroke();
        rect(x, y, stepSize, stepSize);  
      }
    }

  }

  var elapsed = millis() - start;
  console.log("sampleImage took: " + elapsed.toFixed(2) + "ms.")
}

function imageResize() {
  // Make a copy of the image so that it can be destructively resized.  Don't
  // time this since a normal application wouldn't need it.
  var originalWidth = originalImage.width;
  var originalHeight = originalImage.height;
  var img = new p5.Image(originalWidth, originalHeight);
  img.copy(originalImage, 0, 0, originalWidth, originalHeight, 0, 0, 
    originalWidth, originalHeight);

  // Setup work, only needs to be done once
  var w = preshrunkImage.width;
  var h = preshrunkImage.height;

  var start = millis();

  // Resize the image
  img.resize(w, h);
    
  // Iterations
  for (var i = 0; i < iterations; i++) {


    // Get the pixel data
    img.loadPixels();

    // Iterate through pixels
    for (var x = 0; x < w; x++) {
      for (var y = 0; y < h; y++) {
        var index = 4 * (y * w + x);
        var r = img.pixels[index];
        var g = img.pixels[index+1];
        var b = img.pixels[index+2];
        var a = img.pixels[index+3];  
        fill(r, g, b, a);
        noStroke();
        rect(x * stepSize, y * stepSize, stepSize, stepSize);  
      }
    }

  }

  var elapsed = millis() - start;
  console.log("imageResize took: " + elapsed.toFixed(2) + "ms.")
}

function iterativeImageResize() {
  // Make a copy of the image so that it can be destructively resized.  Don't
  // time this since a normal application wouldn't need it.
  var originalWidth = originalImage.width;
  var originalHeight = originalImage.height;
  var img = new p5.Image(originalWidth, originalHeight);
  img.copy(originalImage, 0, 0, originalWidth, originalHeight, 0, 0, 
    originalWidth, originalHeight);

  var start = millis();

  // Interatively resize the image by halfing as many times as possible. In an
  // application, you would want to choose a number of times to half (1x - 2x
  // times). The resizing here is extremely drastic for demonstration purposes, 
  // so this is going to do 3x half resizes.
  // Source: http://stackoverflow.com/a/19262385
  var targetWidth = preshrunkImage.width;
  var targetHeight = preshrunkImage.height;
  while (img.width > (2 * targetWidth) && img.height > (2 * targetHeight)) {
    img.resize(img.width / 2, img.height / 2);
  }
  // Final resize to get to the exact dimensions
  if (img.width !== targetWidth || img.height !== targetHeight) {
    img.resize(targetWidth, targetHeight)
  }

  // Setup work, only needs to be done once
  var w = img.width;
  var h = img.height;

  // Iterations
  for (var i = 0; i < iterations; i++) {

    // Get the pixels
    img.loadPixels();

    // Iterate through pixels
    for (var x = 0; x < w; x++) {
      for (var y = 0; y < h; y++) {
        var index = 4 * (y * w + x);
        var r = img.pixels[index];
        var g = img.pixels[index+1];
        var b = img.pixels[index+2];
        var a = img.pixels[index+3];  
        fill(r, g, b, a);
        noStroke();
        rect(x * stepSize, y * stepSize, stepSize, stepSize);  
      }
    }

  }

  var elapsed = millis() - start;
  console.log("iterativeImageResize took: " + elapsed.toFixed(2) + "ms.")
}