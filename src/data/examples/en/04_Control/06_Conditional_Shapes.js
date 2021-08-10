/* 
 * @name Conditional Shapes
 * @arialabel The middle of the window is white and the user’s mouse draws red dots within it. The side edges of the window are beige and as the user’s mouse travels up and down the edges, orange squares with a red border are drawn up and down the center of the window
 * @frame 400,400
 * @description contributed by <a href="https://www.rit.edu/directory/wmhics-w-michelle-harris">
   <b>Prof WM Harris,</b></a> How
    to draw different shapes mid canvas depending on the mouse position.<br/>
	<b>Functions</b>
	are created for the main canvas set up with the markers on the left and
    right hand sides. One is also created for the location of the mouse
    regarding the canvas and the markers. If the mouse is within the
    outer left hand beige rectangle, then the shape of circle is drawn
    down the center of the canvas. If the mouse is within the outer right
    hand beige rectangle, then the shape of square is drawn down the
    center of the canvas.
*/
function setup() {
    createCanvas(400, 400);
    strokeWeight(3);
    //center squares to match circles
    rectMode(CENTER);
    
    //draw rects to mark far sides
    noStroke();
    fill("beige");
    rect(5, height / 2, 10, height);
    rect(width - 5, height / 2, 10, height);
    fill("orange");
    stroke("brown");
  
  }
  
  function draw() {
    point(mouseX, mouseY);
  
    //if (test) {doThis; }
    //test: mouseX on far left of canvas
    //doThis: draw a circle at mouseY
    if (mouseX < 10) {
      circle(width / 2, mouseY, 20);
    }
  
    //test: mouseX on far right of canvas
    //doThis: draw a square at mouseY
    if (mouseX > width - 10) {
      square(width / 2, mouseY, 20);
    }
  
  }
