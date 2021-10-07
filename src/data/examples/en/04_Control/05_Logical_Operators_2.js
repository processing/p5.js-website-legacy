/* 
 * @name Logical Operators 2
 * @arialabel Squares travel diagonally across the screen when a rectangle on the screen is pressed
 * @frame 400,400
 * @description contributed by <a href="https://www.rit.edu/directory/wmhics-w-michelle-harris">
   <b>Prof WM Harris,</b></a> How
	to create Xboxes with one global variable and create conditions with
	boolean variables and boolean expressions by utilizing Boolean
	operators ||, &&, and ! to do boundary checking.<br/>
	<b>Functions</b>
	are created for both the canvas set up as well as the creation of
	the boxes. Background color is dependent on the location of the
	boxes in the canvas space. When mouse button and key are pressed
	simultaneously, the “where” text and box color changes to cyan,
	but if the mouse button is clicked alone then the animation will
	start. When q or Q are pressed the text “Did you type q or Q?”
	will change to blue, else it will be purple. If the mouse is placed
	within the orange box containing the text, “withinRect” then the
	shape will turn pink.
 */


//1 coordinate for everything :)
let where = 0; //control boxes' positions

function setup() {
  createCanvas(400, 400);
}

function draw() {
  //similar to slide 4 use of OR, ||
  //to set bg color of canvas
  if ((where < 0) || (where > height)) {
    background("beige");
  } else {
    background("chocolate");
  }

  //similar to slide 4 use of AND, &&
  //to set fill color of box & text
  if (mouseIsPressed && keyIsPressed) {
    fill("cyan");
  } else {
    fill(255);
  }

  //boxL
  rect(where, where, 40);

  //boxR, pad x coordinate for size of box
  rect(width - where - 40, where, 40);

  //Move the boxes
  where = where + 1;

  //Show the value of where the boxes are
  text("where is " + where, 150, 30);

  //testing not, ! and or, || operators
  if (!(key === "q" || key === "Q")) {
    fill("purple");
  } else {
    fill("dodgerBlue");
  }
  //Show the current key value
  text("Did you type a q or Q? " + key, 150, 70);

  //*** Boundary checking ***
  //Is the mouse within rect boundary?
  //left, right, top, bottom
  let withinRect = (mouseX >= 150) &&
    (mouseX <= 150 + 100) &&
    (mouseY >= 300) &&
    (mouseY <= 300 + 40);
  //fill color based on value of withinRect
  if (withinRect) {
    fill("pink");
  } else {
    fill("orange");
  }
  //draw the rect
  rect(150, 300, 100, 40);
  //show withinRect value as label on rect
  fill(0);
  text("withinRect " + withinRect, 160, 320);
}

//boxes restart
function mousePressed() {
  //Reset boxes back up and above the canvas
  where = -50;
}