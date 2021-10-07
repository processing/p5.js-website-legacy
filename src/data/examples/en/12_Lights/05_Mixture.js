/*
 * @name Mixture
 * @arialabel Cube where we can see three sides, one blue and two forest green on a black background. An orange light shines where your mouse is when it is placed in the cube
 * @frame 710,400 (optional)
 * @description Display a box with three different kinds of lights.
 */
function setup() {
  createCanvas(710, 400, WEBGL);
  noStroke();
}

function draw() {
  background(0);
  
  // ambient light
   ambientLight(0, 255/4, 0);
  
  // to set the light position,
  // think of the world's coordinate as:
  // -width/2,-height/2 -------- width/2,-height/2
  //                |            |
  //                |     0,0    |
  //                |            |
  // -width/2,height/2--------width/2,height/2

  // blue directional light from the left
  directionalLight(0, 0, 255, -1, 0, 0);

  // calculate distance from center to mouseX
  let lightX = mouseX - width / 2;
  let lightY = mouseY - height / 2;
  
  // red spotlight
  // axis located at lightX, lightY, 500
  // axis direction of light: 0, 0, -1
  spotLight(255, 0, 0, lightX, lightY, 500, 0, 0, -1);

  // rotate on X axis
  rotateX(-PI/4);
  // rotate on Y axis
  rotateY(PI/4);
  
  // place box on (0, 0, 0), size 100
  box(100);
}
