/*
 * @name Hue
 * @arialabel Horizontal bars that step through different hues, controlled using a loop
 * @description Hue is that attribute of a color by the virtue of
 * which it is perceptible as red, green, blue etc. It is independent
 * of saturation(intensity) and brightness.
 */
function setup() {
  createCanvas(400, 400) ;
  colorMode(HSB);
}

function draw() {
  background (220)
  noStroke();

  for (let i = 0;i<12;i++){
    
    //with each iteration of the loop 
    //the hue steps down by 25
    
    //fill(hue,saturation,brightness)
    fill (360-i*25,100,100) ;

    rect (0,i*height/12,width,height/12) ;
  }
}
