/*
 * @name Color Wheel
 * @arialabel 36 Circles in a circular arrangement cycling through different hues of the color wheel
 * @description A color wheel is an organization of color hues around a circle,
 *  which shows the relationships between primary colors, secondary colors, tertiary colors etc.
 */
function setup() {
    createCanvas(400, 400) ;
    colorMode(HSB);
    
    //setting angle mode to degrees 
    //to aid in positioning of circles
    angleMode(DEGREES);
  }
  
  function draw() {
    background (220)
    noStroke();
  
    //loop steps through 36 times drawing 
    //a circle with a separate hue each time
    
    for (let i = 0;i<36;i++){
      
    //determines position of circles
      x = 200 + 100*cos(i*10);
      y = 200 + 100*sin(i*10);
    
    //i * 10 allows to cover the entire hue range
    //the first circle has a hue of 0*10 = 0
    // last circle has has a hue of 35*10 = 350
    // hue of 0 and 360 are identical
      
      fill(i*10,100,100);
      circle(x,y,50);
    }
  }