/* 
 * @name Flip Color
 * @frame 400,400
 * @description contributed by <a href="https://www.rit.edu/directory/wmhics-w-michelle-harris">
   <b>Prof WM Harris,</b></a> How to use the millis() function to flip the color of a shape every two
    seconds.<br/>
	<b>Functions</b>
	are created for the main canvas set up which consists of a line of
    ellipses and determines the flip time amount.  A second function is
    created to determine the fill when the color is flipped.
*/


let flipTime; //time to flip fillColor btn 0 and 255
let fillColor; //store current ellipse color

function setup() {
  createCanvas(400, 400);
  fillColor = 0; //black
  fill(fillColor);
  ellipseMode(CORNER);
  // flipTime = 2secs in the future (2000ms)
  flipTime = 2000;
}

function draw() {
  /* if current time >= flipTime, flip fillColor, call
        fill() with the new color, & set the next flipTime
   */
  if ( millis()  >= flipTime) {
    console.log(flipTime); //what is flipTime now?
    
    //flip fillColor
    if (fillColor === 0) {
      fillColor = 255; //white
    } else {
      fillColor = 0; //black
    }
    
    //call fill() with the new color
    fill(fillColor);
    
    //set the next flipTime
    flipTime = millis() + 2000; // 2 secs + current time
  }
  
  //ellipse(0, 0, width, height);
  //Instead, a canvas-wide row of 20-pixel circles 
  for (let x = 0; x < width; x = x + 20) {
    ellipse(x, 190, 20);
  }
}








