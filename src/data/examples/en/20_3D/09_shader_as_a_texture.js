/*
 * @name Shader as a Texture
 * @arialabel Sphere broken up into a square grid with a gradient in each grid.
 * @description Shaders can be applied to 2D/3D shapes as textures.
 * <br> To learn more about using shaders in p5.js: <a href="https://itp-xstory.github.io/p5js-shaders/">p5.js Shaders</a>
 */

 // this variable will hold our shader object
 let theShader;
 // this variable will hold our createGraphics layer
 let shaderTexture;

 let theta = 0;

 let x;
 let y;
 let outsideRadius = 200;
 let insideRadius = 100;

 function preload(){
   // load the shader
   theShader = loadShader('assets/texture.vert','assets/texture.frag');
 }

 function setup() {
   // shaders require WEBGL mode to work
   createCanvas(710, 400, WEBGL);
   noStroke();

   // initialize the createGraphics layers
   shaderTexture = createGraphics(710, 400, WEBGL);

   // turn off the createGraphics layers stroke
   shaderTexture.noStroke();

    x = -50;
    y = 0;
 }

 function draw() {

   // instead of just setting the active shader we are passing it to the createGraphics layer
   shaderTexture.shader(theShader);

   // here we're using setUniform() to send our uniform values to the shader
   theShader.setUniform("resolution", [width, height]);
   theShader.setUniform("time", millis() / 1000.0);
   theShader.setUniform("mouse", [mouseX, map(mouseY, 0, height, height, 0)]);

   // passing the shaderTexture layer geometry to render on
   shaderTexture.rect(0,0,width,height);

   background(255);

   // pass the shader as a texture
   texture(shaderTexture);

   translate(-150, 0, 0);
   push();
   rotateZ(theta * mouseX * 0.0001);
   rotateX(theta * mouseX * 0.0001);
   rotateY(theta * mouseX * 0.0001);
   theta += 0.05;
   sphere(125);
   pop();

   // passing a fifth parameter to ellipse for smooth edges in 3D
   ellipse(260,0,200,200,100);
 }
