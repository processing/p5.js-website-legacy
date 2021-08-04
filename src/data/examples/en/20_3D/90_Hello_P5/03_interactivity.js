/*
 * @name Interactivity 2
 * @arialabel Dark grey background with a colored circle in the middle that changes color as the user drags a slider on the bottom
 * @frame 720,425
 * @description The circle changes color when you move the slider.
 */

// A HTML range slider
let slider;

function setup() {
  createCanvas(720, 400);
  // hue, saturation, and brightness
  colorMode(HSB, 255);
  // slider has a range between 0 and 255 with a starting value of 127
  slider = createSlider(0, 255, 127);
}

function draw() {
  background(127);
  strokeWeight(2);

  // Set the hue according to the slider
  stroke(slider.value(), 255, 255);
  fill(slider.value(), 255, 255, 127);
  ellipse(360, 200, 200, 200);
}