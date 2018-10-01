/*
 * @name Noise3D
 * @frame 710,400 (optional)
 * @description Using 3D noise to create simple animated texture.
 */
var noiseVal;
//Increment x by 0.01 
var x_increment=0.01;
//Increment z by 0.02 every draw() cycle
var z_increment=0.02;

//Offset values
var z_off,y_off,x_off;

function setup() {
   //Create the Canvas
   createCanvas(640,360);
   //Define frame rate
   frameRate(20);
   //Initial value of z_off
   z_off=0;
}


function draw() {
	
   x_off=0;
   y_off=0;	
   //Make the background black
   background(0);
   //Adjust the noice detail
   noiseDetail(8,0.65);
      
   //For each x,y calculate noice value
   for (var y = 0; y < height; y++) {
	 	
     x_off+=x_increment;
     y_off=0;
     
     for (var x = 0; x < width; x++) {
       //Calculate and Draw each pixel
       noiseVal = noise(x_off,y_off,z_off);
       stroke(noiseVal*255);
       y_off+=x_increment;
       point(x,y);
     }
   
   }
   
   z_off+=z_increment

 }
