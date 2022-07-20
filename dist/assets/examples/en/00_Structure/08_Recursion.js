/*
 *@name Recursion
 *@arialabel Grey circle with two grey circles across its middle. Each of these two grey circles have more grey circles across its middle. This pattern continues until no more can be drawn within them.
 *@description A demonstration of recursion, which means functions call themselves.
 * A recursive function must have a terminating condition, without which it will
 * go into an infinite loop. Notice how the drawCircle() function calls itself 
 * at the end of its block. It continues to do this until the variable "level" is 
 * equal to 1.
 */

function setup() {
  createCanvas(720, 560);
  noStroke();
  noLoop();
}

function draw() {
  drawCircle(width / 2, 280, 6);
}

function drawCircle(x, radius, level) {
  // 'level' is the variable that terminates the recursion once it reaches 
  // a certain value (here, 1). If a terminating condition is not 
  // specified, a recursive function keeps calling itself again and again
  // until it runs out of stack space - not a favourable outcome! 
  const tt = (126 * level) / 4.0;
  fill(tt);
  ellipse(x, height / 2, radius * 2, radius * 2);
  if (level > 1) {  
    // 'level' decreases by 1 at every step and thus makes the terminating condition
    // attainable
    level = level - 1;  
    drawCircle(x - radius / 2, radius / 2, level);
    drawCircle(x + radius / 2, radius / 2, level);
  }
}
