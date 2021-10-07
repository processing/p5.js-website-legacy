/*
 * @name Brownian Motion
 * @arialabel A continuous white line draws squiggles on a grey background, forming a random pattern
 * @description Recording random movement as a continuous line.
 *  (ported from https://processing.org/examples/brownian.html)
 */

let num = 2000;
let range = 6;

// global variable 
let i;

let ax = [];
let ay = [];

function setup() 
{
  createCanvas(640, 360);
  for(i = 0; i < num; i++) {
    ax[i] = width/2;
    ay[i] = height/2;
  }
  frameRate(30);
}

function draw() 
{
  background(51);
  
  // Shift all elements 1 place to the left
  for( i = 1; i < num; i++) {
    ax[i-1] = ax[i];
    ay[i-1] = ay[i];
  }

  // Put a new value at the end of the array
  ax[num-1] += random(-range, range);
  ay[num-1] += random(-range, range);

  // Constrain all points to the screen
  ax[num-1] = constrain(ax[num-1], 0, width);
  ay[num-1] = constrain(ay[num-1], 0, height);
  
  // Draw a line connecting the points
  for( i=1; i<num; i++) {    
    let val = i/num * 204.0 + 51;
    stroke(val);
    line(ax[i-1], ay[i-1], ax[i], ay[i]);
  }
  
}

