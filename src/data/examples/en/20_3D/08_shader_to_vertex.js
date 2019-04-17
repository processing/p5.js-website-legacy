/*
 * @name Applying Shaders to Vertices
 * @description Shaders can be applied to vertices.
 */

let theShader;
let shaderBg;

let theta = 0;

let x;
let y;
let outsideRadius = 200;
let insideRadius = 100;


function preload(){
  // load the shader
  theShader = loadShader('uniform.vert', 'uniform.frag');
}

function setup() {
  // shaders require WEBGL mode to work
  createCanvas(windowWidth, windowHeight, WEBGL);
  noStroke();

  // initialize the createGraphics layers
  shaderBg = createGraphics(windowWidth, windowHeight, WEBGL);

  // turn off the cg layers stroke
  shaderBg.noStroke();

   x = -50;
   y = 0;
}

function draw() {


  // shader() sets the active shader with our shader
  // instead of just setting the active shader we are passing it to the shaderBg graphic
  shaderBg.shader(theShader);

  // here we're using setUniform() to send our uniform values to the shader
  // set uniform is smart enough to figure out what kind of variable we are sending it,
  // so there's no need to cast (unlike processing)
  theShader.setUniform("u_resolution", [width, height]);
  theShader.setUniform("u_time", millis() / 1000.0);
  theShader.setUniform("u_mouse", [mouseX, map(mouseY, 0, height, height, 0)]);

  // rect gives us some geometry on the screen
  // passing the shaderBg graphic geometry to render on
  shaderBg.rect(0,0,width,height);

  //because the shader is a graphic now we need to render it to the screen
  // image(shaderBg,0,0,width,height);

  //now we can draw on top of our shader
//   noStroke();
//   fill(255);
//   ellipse(mouseX,mouseY, 60*cos(millis()/2000),60*sin(millis()/2000));

//   noFill();
//   stroke(255);
//   for (let i = 0; i < 60; i++) {
//      ellipse(mouseX,mouseY, i*60*cos(millis()/2000),i*60*cos(millis()/2000));
//   }


  background(255);
  translate(-220, 0, 0);
  push();
  rotateZ(theta * mouseX * 0.0001);
  rotateX(theta * mouseX * 0.0001);
  rotateY(theta * mouseX * 0.0001);
  //pass image as texture
  texture(shaderBg);
  sphere(150);
  pop();
  translate(440, 0, 0);
  push();
  // rotateZ(theta * 0.1);
  // rotateX(theta * 0.1);
  // rotateY(theta * 0.1);
  texture(shaderBg);
  // box(100, 100, 100);
  // ellipse(-100, -100, 500,500);
  // triangle(-100,-100, -320, 200, 320, 100);

  let numPoints = int(map(mouseX, 0, width, 6, 60));
  let angle = 0;
  let angleStep = 180.0 / numPoints;

  beginShape();
    vertex(-200, -100, 0, 0);
    vertex(85, -100, 1, 0);
    vertex(85, 75, 1, 1);
    vertex(-200, 75, 0, 1);
  endShape();

  pop();
  theta += 0.05;


}

function windowResized(){
  resizeCanvas(windowWidth, windowHeight);
}
