/*
 * @name Load Saved Table
 * @description Create a Bubble class, instantiate multiple bubbles using data from
 * a csv file, and display results on the screen.
 *  Because the web browsers differ in where they save files, we do not make use of
 * 
 * Based on Daniel Shiffman's <a href="https://processing.org/examples/loadsavetable.html">LoadSaveTable Example</a> for Processing.
 */

// Bubble class
class Bubble {
  constructor(x, y, diameter, name) {
    this.x = x;
    this.y = y;
    this.diameter = diameter;
    this.radius = diameter / 2;
    this.name = name;

    this.over = false;
  }

  // Check if mouse is over the bubble
  rollover(px, py) {
    let d = dist(px, py, this.x, this.y);
    this.over = d < this.radius;
  }

  // Display the Bubble
  display() {
    stroke(0);
    strokeWeight(0.8);
    noFill();
    ellipse(this.x, this.y, this.diameter, this.diameter);
    if (this.over) {
      fill(0);
      textAlign(CENTER);
      text(this.name, this.x, this.y + this.radius + 20);
    }
  }
}

let table; // Global object to hold results from the loadTable call
let bubbles = []; // Global array to hold all bubble objects

// Put any asynchronous data loading in preload to complete before "setup" is run
function preload() {
  table = loadTable("assets/bubbles.csv", "header");
}

// Convert saved Bubble data into Bubble Objects
function loadData() {
  const bubbleData = table.getRows();
  // The size of the array of Bubble objects is determined by the total number of rows in the CSV
  const length = table.getRowCount();

  for (let i = 0; i < length; i++) {
    // Get position, diameter, name,
    const x = bubbleData[i].getNum("x");
    const y = bubbleData[i].getNum("y");
    const diameter = bubbleData[i].getNum("diameter");
    const name = bubbleData[i].getString("name");

    // Put object in array
    bubbles.push(new Bubble(x, y, diameter, name));
  }
}

// Create a new Bubble each time the mouse is clicked.
function mousePressed() {
  // Create a new row
  let row = table.addRow();

  let name = "New Bubble";
  let diameter = random(40, 80);

  // Set the values of that row
  row.setNum("x", mouseX);
  row.setNum("y", mouseY);
  row.setNum("diameter", diameter);
  row.setString("name", name);

  bubbles.push(new Bubble(mouseX, mouseY, diameter, name));

  // If the table has more than 10 rows
  if (table.getRowCount() > 10) {
    // Delete the oldest row
    table.removeRow(0);
    bubbles.shift();
  }
}

function setup() {
  createCanvas(640, 360);
  loadData();
}

function draw() {
  background(255);

  // Display all bubbles
  for (let i = 0; i < bubbles.length; i++) {
    bubbles[i].display();
    bubbles[i].rollover(mouseX, mouseY);
  }

  // Label directions at bottom
  textAlign(LEFT);
  fill(0);
  text("Click to add bubbles.", 10, height - 10);
}
