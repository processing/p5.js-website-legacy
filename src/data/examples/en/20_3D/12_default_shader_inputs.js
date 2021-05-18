/*
 * @name Default Shader Inputs
 * @description
 * <p>p5 provides ... attributes ...</p>
 * <p>
 *   <span>• <b>aPosition</b></span><br>
 *     <span>&nbsp;&nbsp;◦ long description here</span><br>
 *   <span>• <b>aTexCoord</b></span><br>
 *     <span>&nbsp;&nbsp;◦ long description here</span><br>
 *   <span>• <b>aNormal</b></span><br>
 *     <span>&nbsp;&nbsp;◦ long description here</span><br>
 *   <span>• <b>aMaterialColor</b></span><br>
 *     <span>&nbsp;&nbsp;◦ long description here</span><br>
 * </p><br>
 * <p>p5 provides ... uniforms ...</p>
 * <p>
 *   <span>• <b>uViewMatrix</b></span><br>
 *     <span>&nbsp;&nbsp;◦ long description here</span><br>
 *   <span>• <b>uProjectionMatrix</b></span><br>
 *     <span>&nbsp;&nbsp;◦ long description here</span><br>
 *   <span>• <b>uModelViewMatrix</b></span><br>
 *     <span>&nbsp;&nbsp;◦ long description here</span><br>
 *   <span>• <b>uNormalMatrix</b></span><br>
 *     <span>&nbsp;&nbsp;◦ long description here</span><br>
 * </p><br>
 * <p>To learn more about using shaders in p5.js: <a href="https://itp-xstory.github.io/p5js-shaders/">p5.js Shaders</a></p><br>
 */

 // this variable will hold our shader object
 let theShader;
 // this variable will hold our webcam video
 let cam;

 function preload(){
   // load the shader
   theShader = loadShader('assets/webcam.vert', 'assets/webcam.frag');
 }

 function setup() {
   // shaders require WEBGL mode to work
   createCanvas(710, 400, WEBGL);
   noStroke();

   cam = createCapture(VIDEO);
   cam.size(710, 400);

   cam.hide();
 }

 function draw() {
   // shader() sets the active shader with our shader
   shader(theShader);

   // passing cam as a texture
   theShader.setUniform('tex0', cam);

   // rect gives us some geometry on the screen
   rect(0,0,width,height);
 }
