// casey conchinha - @kcconch ( https://github.com/kcconch )
// louise lessel - @louiselessel ( https://github.com/louiselessel )
// more p5.js + shader examples: https://itp-xstory.github.io/p5js-shaders/

precision mediump float;

// grab texcoords from vert shader
varying vec2 vTexCoord;

// our texture coming from p5
uniform sampler2D tex0;


void main() {
    vec2 uv = vTexCoord;
    
    // the texture is loaded upside down and backwards by default so lets flip it
    uv.y = 1.0 - uv.y;
    
    vec4 tex = texture2D(tex0, uv);
    
    float gray = (tex.r + tex.g + tex.b) / 3.0;
    
    float res = 20.0;
    float scl = res / (10.0);
    
    float threshR = (fract(floor(tex.r*res)/scl)*scl) * gray ;
    float threshG = (fract(floor(tex.g*res)/scl)*scl) * gray ;
    float threshB = (fract(floor(tex.b*res)/scl)*scl) * gray ;
    vec3 thresh = vec3(threshR, threshG, threshB);
    
    // render the output
    gl_FragColor = vec4(thresh, 1.0);
}
