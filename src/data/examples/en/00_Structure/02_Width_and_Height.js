/*
 * @name Width and Height
 * @arialabel Pattern of grey and green horizontal lines. The left half also has white vertical lines. The left half is broken up into two triangular shapes, one which is predominately green stripes, and one which is white with the white stripes
 * @description The 'width' and 'height' variables contain the
 * width and height of the display window as defined in the createCanvas()
 * function.
 */
function setup() {
  createCanvas(720, 400);
}

function draw() {
  background(127);
  noStroke();
  for (let i = 0; i < height; i += 20) {
    fill(129, 206, 15);
    rect(0, i, width, 10);
    fill(255);
    rect(i, 0, 10, height);
  }
}
