/*
 * @name Keyboard
 * @arialabel Each letter on the keyboard draws a different color rectangle on the grey screen when pressed
 * @description Click on the image to give it focus and
 * press the letter keys to create forms in time and space.
 * Each key has a unique identifying number. These numbers
 * can be used to position shapes in space.
 */
let rectWidth;

function setup() {
  createCanvas(720, 400);
  noStroke();
  background(230);
  rectWidth = width / 4;
}

function draw() {
  // keep draw() here to continue looping while waiting for keys
}

function keyPressed() {
  let keyIndex = -1;
  if (key >= 'a' && key <= 'z') {
    keyIndex = key.charCodeAt(0) - 'a'.charCodeAt(0);
  }
  if (keyIndex === -1) {
    // If it's not a letter key, clear the screen
    background(230);
  } else {
    // It's a letter key, fill a rectangle
    randFill_r = Math.floor(Math.random() * 255 + 1);
    randFill_g = Math.floor(Math.random() * 255 + 1);
    randFill_b = Math.floor(Math.random() * 255 + 1);
    fill(randFill_r, randFill_g, randFill_b);
    let x = map(keyIndex, 0, 25, 0, width - rectWidth);
    rect(x, 0, rectWidth, height);
  }
}
