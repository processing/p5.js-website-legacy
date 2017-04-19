/**
 * p5 Home Page Sketch
 * Notes displayed on the screen
 * Each note falls and plays when touched by the mouse
 * Music staff follows behind cursor
*/

var twinkleNotes = ['C4', 'C4', 'G4', 'G4', 'A4', 'A4', 'G4', 'F4', 'F4', 'E4', 'E4', 'D4', 'D4', 'C4',
'G4', 'G4', 'F4', 'F4', 'E4', 'E4', 'D4', 'G4', 'G4', 'F4', 'F4', 'E4', 'E4', 'D4', 'C4', 'C4', 'G4', 'G4', 'A4', 'A4',
'G4', 'F4', 'F4', 'E4', 'E4', 'D4', 'D4', 'C4'];

var notes = [];
var staffPath = [];
var synth;
var currentNote = 0;

function setup() {
  createCanvas(windowWidth, windowHeight);
  background(255);

  // Create a synth and connect it to the master output (your speakers)
  synth = new Tone.Synth().toMaster();

  // Create and display all of the notes
  for(var i = 0; i < width/6; i++) {
    notes[i] = new Note();
    notes[i].twinkle();
    notes[i].display();
  }
}

function draw() {
  background(255);

  if (pmouseX != 0 && pmouseY != 0) {
    staffPath[staffPath.length] = new Staff(pmouseX, pmouseY, mouseX, mouseY);
  }

  for(var j = 0; j < notes.length; j++) {
    notes[j].twinkle();
    notes[j].display();
  }

  // Loop through backwards
  for (var i = 0; i <= this.staffPath.length - 1; i++) {
    if (this.staffPath[i].shade >= 255) {
      this.staffPath.splice(i, 1);
    } else {
      this.staffPath[i].display();
    }
  }
}

// Note class
function Note() {
  this.rad = 5;
  this.currentWidth = width;
  this.currentHeight = height;
  this.x = random(0, width);
  this.y = random(0, height);
  this.c = color(random(100, 255), random(100, 255), random(100, 255));
  this.f = 100;
  this.rotation = random(10);
  this.detectRad = 25;
  this.spin = false;


  this.twinkle = function() {
    if (mouseX + this.detectRad > this.x && mouseX - this.detectRad < this.x && mouseY + this.detectRad > this.y && mouseY - this.detectRad < this.y && !this.spin) {
      this.f = this.c;
      this.spin = true;
      currentNote = int(random(twinkleNotes.length));
      synth.triggerAttackRelease(twinkleNotes[currentNote], "8n");
    }
    else {
      this.f = this.c;
    }
  }

  this.display = function() {
    fill(this.f);
    push();
    translate(this.x, this.y);
    if (this.spin) {
    rotate(this.rotation);
    this.y = this.y + 20;
    }
    strokeWeight(2);
    strokeJoin(ROUND);
    smooth();
    stroke(0);
    scale(0.75);
    ellipse(0, 0, 25, 10);
    line(13, 0, 13, -40);
    pop();
  }

  this.updatePosition = function(newWidth, newHeight) {
    this.x = map(this.x, 0, this.currentWidth, 0, newWidth);
    this.y = map(this.y, 0, this.currentHeight, 0, newHeight);
    this.currentWidth = newWidth;
    this.currentHeight = newHeight;
  }
}

// Class for the staff lines drawn following the path of the mouse
function Staff(prevX, prevY, newX, newY) {
  this.faded = false;
  this.shade = 0;
  this.interval = 8;

  this.display = function() {
    strokeWeight(2);
    stroke(this.shade);
    strokeJoin(ROUND);
    smooth();
    line(prevX, prevY - this.interval, newX, newY - this.interval);
    line(prevX, prevY - 2*this.interval, newX, newY - 2*this.interval);
    line(prevX, prevY, newX, newY);
    line(prevX, prevY + this.interval, newX, newY + this.interval);
    line(prevX, prevY + 2*this.interval, newX, newY + 2*this.interval);
    line(prevX, prevY + 3*this.interval, newX, newY + 3*this.interval);
    this.shade+=8;
  }
}

function windowResized() {
  resizeCanvas(windowWidth, windowHeight);
  for(var j = 0; j < notes.length; j++) {
    notes[j].updatePosition(windowWidth, windowHeight);
  }
}
