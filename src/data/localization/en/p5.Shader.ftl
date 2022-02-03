description__0 = Shader class for WEBGL Mode
params__renderer = p5.RendererGL: an instance of p5.RendererGL that will provide the GL context for this new p5.Shader
params__vertSrc = String: source code for the vertex shader (as a string)
params__fragSrc = String: source code for the fragment shader (as a string)
setUniform__description__0 = Used to set the uniforms of a <a href="#/p5.Shader">p5.Shader</a> object.
setUniform__description__1 = Uniforms are used as a way to provide shader programs (which run on the GPU) with values from a sketch (which runs on the CPU).
setUniform__params__uniformName = String: the name of the uniform. Must correspond to the name used in the vertex and fragment shaders
setUniform__params__data = Boolean|Number|Number[]|p5.Image|p5.Graphics|p5.MediaElement|p5.Texture: the data to associate with the uniform. The type can be a boolean (true/false), a number, an array of numbers, or an image (p5.Image, p5.Graphics, p5.MediaElement, p5.Texture)
