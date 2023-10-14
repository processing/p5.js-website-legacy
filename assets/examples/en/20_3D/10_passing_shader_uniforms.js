/*
 * @name Passing Shader Uniforms
 * @arialabel Sage green shape in the middle of a dark purple background. As the user’s mouse moves left, the shape has less sides and as the user’s mouse moves right, the shape has more sides
 * @description Uniforms are the way in which information is passed from p5 to the shader.
 * <br> To learn more about using shaders in p5.js: <a href="https://itp-xstory.github.io/p5js-shaders/">p5.js Shaders</a>
 */

 // this variable will hold our shader object
 let theShader;

 function preload(){
   // load the shader
   theShader = loadShader('assets/uniforms.vert', 'assets/uniforms.frag');
 }

 function setup() {
   // shaders require WEBGL mode to work
   createCanvas(710, 400, WEBGL);
   noStroke();

   describe('a 2d example containing a sage green polygon, rotating in the middle of the sketch. As the mouse moves horizontally, the number of sides for the polygon change.')
 }

 function draw() {
   // shader() sets the active shader with our shader
   shader(theShader);

   // lets send the resolution, mouse, and time to our shader
   // the mouse x position will change the number of sides
   // before sending mouse + time we modify the data so it's more easily usable by the shader
   theShader.setUniform('resolution', [width * displayDensity(), height * displayDensity()]);
   theShader.setUniform('mouse', map(mouseX, 0, width, 0, 7));
   theShader.setUniform('time', frameCount * 0.01);

   // rect gives us some geometry on the screen
   rect(0,0,width, height);
 }
