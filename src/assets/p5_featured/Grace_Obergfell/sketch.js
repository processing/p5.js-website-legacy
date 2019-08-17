function setup() {
  createCanvas(windowWidth, windowHeight);
  background(255);
  colorMode(HSB);
  //for loop that creates prints all the shapes
  for (var x = 0; x < 100; x++) {

    for (var y = 0; y < 100; y++) {
      //changes color for specific regions
   
        fill(170+x, 10, 255, 100);   
//       if (x%10 >= 4 && x%10 <= 5) {
//         fill(200, 10, 255, 100);
//       }
  
//      else if( x%10 >= 2 && x%10 <=7){
//         fill(255, 255, 255, 100);
//       }
    
//       else{
//         fill(255, 255, 255, 100);
//       }
      //actually prints the moons
      moon(x, y);
      
    }
  
  }
}

//makes the moons and colors
function moon(x, y) {
  noStroke();
//location and repeat of the moon
  ellipse(x * 40 + 20, y * 40 + 20, 40, 40);
  fill(255);
  ellipse(x * 40 + 30, y * 41 + 25, 40, 40);


}