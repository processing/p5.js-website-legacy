p5.disableFriendlyErrors = true;

var capture;
var videoWidth = null;
var videoHeigh = null;
var sampledPixels = [];
var stepSize = 2;

function setup() {
  createCanvas(windowWidth, windowHeight);
  
  // Set up a video capture
  capture = createCapture(VIDEO);
  capture.size(640, 480);
  capture.hide();

  // Wait until the stream has loaded a frame before doing any processing
  capture.elt.addEventListener("loadeddata", function () {
    videoWidth = this.videoWidth;
    videoHeight = this.videoHeight;
    samplePixels();
    sortPixels();
    drawPixels();
  });
}

function samplePixels() {
  // Make the camera pixels available
  capture.loadPixels();
  // Sample the pixels from the camera and store the colors in an array
  sampledPixels = [];
  for (y = 0; y < videoHeight; y += stepSize) {
    for (x = 0; x < videoWidth; x += stepSize) {
      var i = 4 * (y * videoWidth + x);
      var c = color(
        capture.pixels[i],
        capture.pixels[i + 1],
        capture.pixels[i + 2]
      );
      sampledPixels.push(c);
    }
  }
}

function sortPixels() {
  // Use the native array sort method to do the grunt work of sorting
  sampledPixels.sort(sortHue);
}

function sortHue(color1, color2) {
  // Given two p5 colors, determine which has the greater hue value
  var hue1 = hue(color1);
  var hue2 = hue(color2);
  if (hue1 < hue2) return -1;
  else if (hue1 > hue2) return 1;
  return 0;  
}

function drawPixels() {
  // Calculated dimensions of sampled video 
  var sampledWidth = Math.ceil(videoWidth / stepSize);
  var sampledHeight = Math.ceil(videoHeight / stepSize);
  // We are going to draw rectangles for each sampled color, so scale up the
  // rectangles so they fit the canvas
  var w = width / sampledWidth;
  var h = height / sampledHeight;
  for (var i = 0; i < sampledPixels.length; i++) {
    var x = i % sampledWidth;
    var y = Math.floor(i / sampledWidth);
    fill(sampledPixels[i]);
    noStroke();
    // Draw rectangle slightly larger than needed to deal with rounding errors
    rect(x * w, y * h, w + 1, h + 1);
  }
}