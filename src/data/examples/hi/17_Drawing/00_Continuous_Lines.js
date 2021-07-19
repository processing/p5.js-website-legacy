/* 
* @name सतत रेखा 
* @description एक रेखा खींचने के लिए माउस को क्लिक करें और खींचें। 
*/
function setup() {
  createCanvas(710, 400);
  background(102);
}

function draw() {
  stroke(255);
  if (mouseIsPressed === true) {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}
