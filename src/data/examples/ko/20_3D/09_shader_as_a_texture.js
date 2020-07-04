/*
 * @name 셰이더로 텍스처 만들기
 * @description 셰이더는 2D/3D 도형에 텍스처로서 적용될 수 있습니다.
 * <br> p5.js로 셰이더를 사용하는 방법에 대해 더 알고 싶다면: <a href="https://itp-xstory.github.io/p5js-shaders/">p5.js Shaders</a>
 */

 // 이 변수는 셰이더 객체를 담습니다.
 let theShader;
 // 이 변수는 createGraphics 레이어를 담습니다.
 let shaderTexture;

 let theta = 0;

 let x;
 let y;
 let outsideRadius = 200;
 let insideRadius = 100;

 function preload(){
   // 셰이더 불러오기
   theShader = loadShader('assets/texture.vert','assets/texture.frag');
 }

 function setup() {
  // 셰이더를 작동하기 위해 WEBGL 모드가 필요합니다.
   createCanvas(710, 400, WEBGL);
   noStroke();

   // createGraphics 레이어 초기화하기
   shaderTexture = createGraphics(710, 400, WEBGL);

   // createGraphics 레이어의 테두리 없애기
   shaderTexture.noStroke();

    x = -50;
    y = 0;
 }

 function draw() {

   // theShader를 활성화 셰이더로 설정하는 대신, createGraphics 레이어로 보냅니다.
   shaderTexture.shader(theShader);

   // setUniform()를 사용하여 유니폼을 theShader로 보냅니다.
   theShader.setUniform("resolution", [width, height]);
   theShader.setUniform("time", millis() / 1000.0);
   theShader.setUniform("mouse", [mouseX, map(mouseY, 0, height, height, 0)]);

   // shaderTexture 레이어 위 기하 형상의 렌더링을 위한 설정
   shaderTexture.rect(0,0,width,height);

   background(255);

   // 셰이더를 텍스쳐로서 설정하기
   texture(shaderTexture);

   translate(-150, 0, 0);
   push();
   rotateZ(theta * mouseX * 0.0001);
   rotateX(theta * mouseX * 0.0001);
   rotateY(theta * mouseX * 0.0001);
   theta += 0.05;
   sphere(125);
   pop();

   // 5번째 매개변수를 3D 상의 부드러운 모서리 처리를 위한 값으로 보내기
   ellipse(260,0,200,200,100);
 }
