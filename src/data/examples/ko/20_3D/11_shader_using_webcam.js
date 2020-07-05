/*
 * @name 웹캠을 사용한 셰이더
 * @description 웹캠을 텍스처로서 셰이더에 보낼 수 있습니다. 
 * <br> p5.js로 셰이더를 사용하는 방법에 대해 더 알고 싶다면: <a href="https://itp-xstory.github.io/p5js-shaders/">p5.js Shaders</a>
 */

 // 이 변수는 셰이더 객체를 담습니다.
 let theShader;
 // 이 변수는 웹캠 비디오를 담습니다.
 let cam;

 function preload(){
   // 셰이더 불러오기
   theShader = loadShader('assets/webcam.vert', 'assets/webcam.frag');
 }

 function setup() {
  // 셰이더 작동을 위해 WEBGL 모드가 필요합니다.
   createCanvas(710, 400, WEBGL);
   noStroke();

   cam = createCapture(VIDEO);
   cam.size(710, 400);

   cam.hide();
 }

 function draw() {
   // shader()는 활성화 셰이더를 theShader로 설정합니다.
   shader(theShader);

   // cam을 텍스처로 보내기
   theShader.setUniform('tex0', cam);

  // rect()함수로 화면에 기하 추가하기
   rect(0,0,width,height);
 }
