/* 
 * @name Weight Line
 * @arialabel Light yellow background and the user’s mouse draws lines of various shades and thicknesses as it hovers over the background
 * @frame 710,400
 * @description contributed by <a href="https://www.rit.edu/directory/wmhics-w-michelle-harris">
   <b>Prof WM Harris,</b></a> using the random function with events to color/weight a line<br/>
  <b>How</b> to use the random function with events to color/ weight a line
	dependent on mouse location, left mouse button clicks, character key types, and
	random key releases.<br/>
  <b>Functions</b> are created for both the canvas set up as well as the creation of
	the line. Depending on the action taken by the user the line can
	vary in width and color. Left mouse button clicks result in a color
	change to blue, while the typing of any character key will change
	the color to turquoise, each resulting in a variable stroke weight;
	the width of the former will be between 0 – 1 while the width of
	the latter will be 0 – 5. The release of any key will result in a
  random hue, saturation, and brightness change to the line.
 */


function setup() {
    createCanvas(400, 400);
    background("beige");
    colorMode(HSB);
  }
  
  function draw() {
    //Line from prev pt to current pt
    //of mouse position
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
  
  //listen when we click the mouse
  function mouseClicked() {
    //weights 0 to 1
    stroke("slateBlue");
    strokeWeight(random());
  
    //what if want weights 0 to .4?
    //strokeWeight( random(.4) );
  }
  
  //listen when we release *any* key
  function keyReleased() {
    //color hue values between 20 and 145
    //saturation 0 to 100
    //brightness 80 to 100
    stroke(random(20, 145), random(100), random(80, 100));
  }
  
  //listen for only character keys
  function keyTyped() {
    //weights 0 to 5
    stroke("turquoise");
    strokeWeight(random(5));
  }