/*
 * @name Random Gaussian
 * @arialabel Translucent white circles are drawn in a line left and right multiple times until they overlap to form a white streak
 * @frame 720,400
 * @description This sketch draws ellipses with x and y locations tied to a gaussian distribution of random numbers.
 *  (ported from https://processing.org/examples/randomgaussian.html)
 */

  function setup() {
    createCanvas(720, 400);
    background(0);
  }
  
  function draw() {
  
    // Get a gaussian random number w/ mean of 0 and standard deviation of 1.0
    let val = randomGaussian();
  
    let sd = 60;                  // Define a standard deviation
    let mean = width/2;           // Define a mean value (middle of the screen along the x-axis)
    let x = ( val * sd ) + mean;  // Scale the gaussian random number by standard deviation and mean
  
    noStroke();
    fill(255, 10);
    ellipse(x, height/2, 32, 32);   // Draw an ellipse at our "normal" random location
  }

