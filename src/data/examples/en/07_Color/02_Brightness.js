/*
 * @name Brightness
 * @arialabel Horizontal bars that step through brightness(high to low) of a color, controlled using a loop
 * @description Lightness is the amount of black or white that’s been mixed with a hue.
 * Adding white makes the color lighter and adding black makes it darker.
 */
function setup() {
  createCanvas(400, 400) ;
  colorMode(HSB);
}

function draw() {
  background (220)
  noStroke();

  for (let i = 0;i<6;i++){
    
    //with each iteration of the loop 
    //the brightness steps down by 20
    
    //fill(hue,saturation,brightness)
    fill (28,100,100-i*20) ;

    rect (0,i*height/6,width,height/6) ;
  }
}
