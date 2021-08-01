description__0 = Shader class for WEBGL Mode
params__renderer = p5.RendererGL: an instance of p5.RendererGL that will provide the GL context for this new p5.Shader
params__vertSrc = String: source code for the vertex shader (as a string)
params__fragSrc = String: source code for the fragment shader (as a string)
setUniform__description__0 = Wrapper around gl.uniform functions. As we store uniform info in the shader we can use that to do type checking on the supplied data and call the appropriate function.
setUniform__params__uniformName = String: the name of the uniform in the shader program
setUniform__params__data = Object|Number|Boolean|Number[]: the data to be associated with that uniform; type varies (could be a single numerical value, array, matrix, or texture / sampler reference)
