/*
 * @name Random
 * @arialabel Various shades of grey bars change patterns randomly every half a second 
 * @description Random numbers create the basis of this image.
 * Each time the program is loaded the result is different.
 */
function setup() {
  createCanvas(710, 400);
  background(0);
  strokeWeight(20);
  frameRate(2);
}

function draw() {
  for (let i = 0; i < width; i++) {
    let r = random(255);
    stroke(r);
    line(i, 0, i, height);
  }
}
