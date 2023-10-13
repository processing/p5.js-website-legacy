precision mediump float;

varying vec2 vTexCoord;

uniform sampler2D tex0;
uniform vec2 userMouse;
uniform float time;

/*
  the fragment shader has to have a main() function, where you will do most of your
  programming. main() is responsible for setting the color of the current pixel, by
  assigning a vec4 (r,g,b,a) to the built-in gl_FragColor.
*/
void main() {
  vec2 uv = vTexCoord;
  
  // uv.x = 
  // uv.x *= 1.0 - (sin(uv.x + (time/1000.0))) / 20.0;
  // uv.y += (cos(uv.y + (time/1000.0))) / 10.0;
  
  vec4 src = texture2D(tex0, vec2(uv.x,1.0-uv.y));   
  
  float horizontal = uv.x;
  float vertical = uv.y;
  
  // uv.x *= 2.0;    
  // uv.x = mod(uv.x,1.0);
  // uv.y *= 2.0;
  // uv.y = mod(uv.y,1.0);
  
  // uv.x = sin(uv.x);
  // uv.y = cos(uv.y);
  
  // uv.x = step(uv.x,0.5);
  // uv.y = step(uv.y,0.5);
  
  float value = 1.0 - distance(uv, userMouse) * 1.5;
  
  value = clamp(value,0.0,1.0);
    
  
  vec3 myColor = vec3(value) * vec3(uv.x,uv.y,value);
  
  // add the text on top and mask with the distance value
  myColor += src.rgb * value;
  
  float line = step(value,mod(time/1000.0,1.0)); 
  
  // myColor += line;
  
  // and now this color is to the current pixel
  gl_FragColor = vec4(myColor,1.0);
}