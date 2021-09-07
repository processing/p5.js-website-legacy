/*
 * @name Sound Effect
 * @arialabel Grey circle on a white screen that plays a doorbell sound when pressed on
 * @description <p>Play a sound effect when the mouse is clicked inside the circle.</p>
 * <p><em><span class="small"> To run this example locally, you will need the
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">p5.sound library</a>
 * a sound file, and a running <a href="https://github.com/processing/p5.js/wiki/Local-server">local server</a>.</span></em></p>
 */
// Adapted from Learning Processing by Daniel Shiffman
// http://www.learningprocessing.com
// Doorbell sample by Corsica_S via freesound.org,
// Creative Commons BY 3.0

// A Class to describe a "doorbell" (really a button)
class Doorbell {
  constructor(x_, y_, r_) {
    // Location and size
    this.x = x_;
    this.y = y_;
    this.r = r_;
  }
  // Is a point inside the doorbell? (used for mouse rollover, etc.)
  contains(mx, my) {
    return dist(mx, my, this.x, this.y) < this.r;
  }

  // Show the doorbell (hardcoded colors, could be improved)
  display(mx, my) {
    if (this.contains(mx, my)) {
      fill(100);
    } else {
      fill(175);
    }
    stroke(0);
    strokeWeight(4);
    ellipseMode(RADIUS);
    ellipse(this.x, this.y, this.r, this.r);
  }
}

// A sound file object
let dingdong;

// A doorbell object (that will trigger the sound)
let doorbell;

function setup() {
  createCanvas(200, 200);

  // Load the sound file.
  // We have included both an MP3 and an OGG version.
  soundFormats('mp3', 'ogg');
  dingdong = loadSound('assets/doorbell.mp3');

  // Create a new doorbell
  doorbell = new Doorbell(width / 2, height / 2, 32);
}

function draw() {
  background(255);
  // Show the doorbell
  doorbell.display(mouseX, mouseY);
}

function mousePressed() {
  // If the user clicks on the doorbell, play the sound!
  if (doorbell.contains(mouseX, mouseY)) {
    dingdong.play();
  }
}
