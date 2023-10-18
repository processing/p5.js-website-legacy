/*
 * @name Lerp Color
 * @arialabel Horizontal bars that interpolate between two colors (red and blue), controlled using a loop 
 * @description Lerp Color blends two different colors to produce a range of colors 
 * that exist between the chosen color values. 
 */
function setup() {
  createCanvas(400, 400);
  colorMode(HSB);
}

function draw() {
  background(220);
  noStroke();
  
  //try changing these colors
  colorA = color(100,100,100);
  colorB = color(250,100,20);
  
  for (let i = 0;i<12;i++){  
    
    //converts i to a fraction between 0 and 1
    position = map(i,0,12,0,1);
    
    //that position determines where the LerpedColor
    //is between colorA and colorB
    LerpedColor = lerpColor(colorA,colorB,position);
    
    fill (LerpedColor) ;
    rect (0,i*height/12,width,height/12) ;
  }
  
    //Labels
    text("Color A",10,20);
    fill("#FFF");
    text("Color B",10,390);
}