description__0 = Clase Shader para el modo WEBGL
params__renderer = p5.RendererGL: una instancia de p5.RendererGL que servirá de contexto GL para este nuevo p5.Shader
params__vertSrc = String: código fuente para el vertex shader (en forma de string)
params__fragSrc = String: código fuente para el fragment shader (en forma de string)
setUniform__description__0 = Wrapper de las funciones gl.uniform. Como almacenamos información de uniform en el shader, la podemos usar para revisar los datos provistos y llamar a la función apropiada.
setUniform__params__uniformName = String: the name of the uniform in the shader program
setUniform__params__data = Object|Number|Boolean|Number[]: the data to be associated with that uniform; type varies (could be a single numerical value, array, matrix, or texture / sampler reference)
