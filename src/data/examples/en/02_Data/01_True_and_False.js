/*
 * @name True and False
 * @arialabel Black background with vertical white lines on the left half and horizontal white lines on the right half
 * @description A Boolean variable has only two possible values: true or false.
 * It is common to use Booleans with control statements to determine the flow
 * of a program. In this example, when the boolean value "b" is true, vertical
 * lines are drawn and when the boolean value "b" is false, horizontal
 * lines are drawn.
 */
function setup() {
  createCanvas(720, 400);
  background(0);
  stroke(255);

  let b = false;
  let d = 20;
  let middle = width / 2;

  for (let i = d; i <= width; i += d) {
    b = i < middle;

    if (b === true) {
      // Vertical line
      line(i, d, i, height - d);
    }

    if (b === false) {
      // Horizontal line
      line(middle, i - middle + d, width - d, i - middle + d);
    }
  }
}
