/*
 * @name Relativity
 * @arialabel 4 vertical stripes in grey, blue, green, and orange. They are displayed in a different order on the top half of the screen compared to the bottom half and this causes the colors to be perceived differently
 * @description Each color is perceived in relation to other colors. The top
 * and bottom bars each contain the same component colors, but a different
 * display order causes individual colors to appear differently.
 */
let a, b, c, d, e;

function setup() {
  createCanvas(710, 400);
  noStroke();
  a = color(165, 167, 20);
  b = color(77, 86, 59);
  c = color(42, 106, 105);
  d = color(165, 89, 20);
  e = color(146, 150, 127);
  noLoop(); // Draw only one time
}

function draw() {
  drawBand(a, b, c, d, e, 0, width / 128);
  drawBand(c, a, d, b, e, height / 2, width / 128);
}

function drawBand(v, w, x, y, z, ypos, barWidth) {
  let num = 5;
  let colorOrder = [v, w, x, y, z];
  for (let i = 0; i < width; i += barWidth * num) {
    for (let j = 0; j < num; j++) {
      fill(colorOrder[j]);
      rect(i + j * barWidth, ypos, barWidth, height / 2);
    }
  }
}
