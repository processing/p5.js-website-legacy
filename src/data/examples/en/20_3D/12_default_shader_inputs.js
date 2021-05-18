/*
 * @name Default Shader Inputs
 * @description
 * <p>p5.js provides some default attributes and uniforms that can be used in your shader programs. Attributes provide per vertex information that can be used in a vertex shader. Uniforms provide information that can be used in both vertex and fragment shaders. (All vertices in a vertex shader, and all pixels in a fragment shader receive the same uniform value as input.)</p><br>
 * <p><u>Attributes</u></p>
 * <p>
 *   <span>• <b>aPosition</b></span><br>
 *     <span>&nbsp;&nbsp;◦ <i>vec3</i> (x, y, z)</span><br>
 *     <span>&nbsp;&nbsp;◦ position associated with a vertex</span><br>
 *   <span>• <b>aTexCoord</b></span><br>
 *     <span>&nbsp;&nbsp;◦ <i>vec2</i> (x, y)</span><br>
 *     <span>&nbsp;&nbsp;◦ texture coordinates associated with a vertex</span><br>
 *   <span>• <b>aNormal</b></span><br>
 *     <span>&nbsp;&nbsp;◦ <i>vec3</i> (x, y, z)</span><br>
 *     <span>&nbsp;&nbsp;◦ normal associated with vertex</span><br>
 *   <span>• <b>aMaterialColor</b></span><br>
 *     <span>&nbsp;&nbsp;◦ <i>vec4</i> (r, g, b, a)</span><br>
 *     <span>&nbsp;&nbsp;◦ color associated with a vertex</span><br>
 *   <span>• <b>The following attribute names are reserved:</b></span><br>
 *     <span>&nbsp;&nbsp;◦ aAmbientColor</span><br>
 * </p><br>
 * <p><u>Uniforms</u></p>
 * <p>
 *   <span>• <b>uViewMatrix</b></span><br>
 *     <span>&nbsp;&nbsp;◦ <i>mat4</i> (4x4 matrix)</span><br>
 *     <span>&nbsp;&nbsp;◦ defines attributes about the camera?? such as position and focal length</span><br>
 *   <span>• <b>uProjectionMatrix</b></span><br>
 *     <span>&nbsp;&nbsp;◦ <i>mat4</i> (4x4 matrix)</span><br>
 *     <span>&nbsp;&nbsp;◦ used to convert 3D world coordinates into screen </span><br>
 *   <span>• <b>uModelViewMatrix</b></span><br>
 *     <span>&nbsp;&nbsp;◦ <i>mat4</i> (4x4 matrix)</span><br>
 *     <span>&nbsp;&nbsp;◦ combination of the model and view matrices</span><br>
 *   <span>• <b>uNormalMatrix</b></span><br>
 *     <span>&nbsp;&nbsp;◦ <i>mat3</i> (3x3 matrix)</span><br>
 *     <span>&nbsp;&nbsp;◦ ?</span><br>
 *   <span>• <b>The following uniform names are reserved:</b></span><br>
 *     <span>&nbsp;&nbsp;◦ uViewport</span><br>
 *     <span>&nbsp;&nbsp;◦ uPerspective</span><br>
 * </p><br>
 * <p>To learn more about using shaders in p5.js see <a href="https://itp-xstory.github.io/p5js-shaders/">p5.js Shaders</a></p><br>
 */

// This variable will hold our shader object
let shaderProgram;

function preload() {
  /* A shader is composed of two parts, a vertex shader, and a
     fragment shader.
     The vertex shader prepares the vertices and geometry to be drawn.
     The fragment shader renders the actual pixel colors.

     loadShader() is asynchronous so it needs to be in preload.
     loadShader() first takes as input the filename of a vertex shader,
     and a fragment shader.
     These file types are usually .vert and .frag, but you can actually
     use anything. .glsl is another common one
  */
  shaderProgram = loadShader("assets/shader_defaults.vert", "assets/shader_defaults.frag");
}

function setup() {
  // Shaders require WEBGL mode to work
  createCanvas(710, 400, WEBGL);
  noStroke();
}

function draw() {
  background(0);

  // shader() sets the active shader with our shader
  shader(shaderProgram);

  // Send the frameCount to the shader
  shaderProgram.setUniform("uFrameCount", frameCount);

  // Rotate our geometry on the X and Y axes
  rotateX(frameCount * 0.01);
  rotateY(frameCount * 0.005);

  // Draw some geometry to the screen
  /* We're going to tessellate the sphere a bit so we have some more
     vertices to work with
  */
  sphere(width / 5, 200, 200);
}
