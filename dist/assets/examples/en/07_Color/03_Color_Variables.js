/*
 * @name Color Variables
 * @arialabel Two squares on a brown background. Both squares are made up of two squares in a larger square. On the left, the outer square is burnt umber, the middle square is golden, and the center square is orange. On the right, the outer square is orange, the middle is burnt umber, and the middle is golden
 * @description (Homage to Albers.) This example creates variables for colors
 * that may be referred to in the program by a name, rather than a number.
 */
function setup() {
  createCanvas(710, 400);
  noStroke();
  background(51, 0, 0);

  let inside = color(204, 102, 0);
  let middle = color(204, 153, 0);
  let outside = color(153, 51, 0);

  // These statements are equivalent to the statements above.
  // Programmers may use the format they prefer.
  //let inside = color('#CC6600');
  //let middle = color('#CC9900');
  //let outside = color('#993300');

  push();
  translate(80, 80);
  fill(outside);
  rect(0, 0, 200, 200);
  fill(middle);
  rect(40, 60, 120, 120);
  fill(inside);
  rect(60, 90, 80, 80);
  pop();

  push();
  translate(360, 80);
  fill(inside);
  rect(0, 0, 200, 200);
  fill(outside);
  rect(40, 60, 120, 120);
  fill(middle);
  rect(60, 90, 80, 80);
  pop();
}
