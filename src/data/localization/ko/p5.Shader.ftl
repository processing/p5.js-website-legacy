description__0 = WebGL 모드를 위한 셰이더 클래스
params__renderer = p5.RendererGL: 새로운 p5.Shader에 GL 문맥을 제공하는 p5.RendererGL 인스턴스
params__vertSrc = 문자열: 버텍스 셰이더의 소스 코드 (문자열 형식)
params__fragSrc = 문자열: 프래그먼트 셰이더의 소스 코드 (문자열 형식)
setUniform__description__0 = Wrapper around gl.uniform functions. As we store uniform info in the shader we can use that to do type checking on the supplied data and call the appropriate function.
setUniform__params__uniformName = String: the name of the uniform in the shader program
setUniform__params__data = Object|Number|Boolean|Number[]: the data to be associated with that uniform; type varies (could be a single numerical value, array, matrix, or texture / sampler reference)
