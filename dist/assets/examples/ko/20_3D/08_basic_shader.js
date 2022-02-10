/*
 * @name 셰이더 기초
 * @description p5.js에 셰이더를 불러오는 방법을 설명하는 기본 예제입니다. 
 * <br> p5.js로 셰이더를 사용하는 방법에 대해 더 알고 싶다면: <a href="https://itp-xstory.github.io/p5js-shaders/">p5.js Shaders</a>
 */

// 이 변수는 셰이더 객체를 담습니다.
let theShader;

function preload(){
  // 셰이더 불러오기
  theShader = loadShader('assets/basic.vert', 'assets/basic.frag');
}

function setup() {
  // 셰이더를 작동하기 위해 WEBGL 모드가 필요합니다.
  createCanvas(710, 400, WEBGL);
  noStroke();
}

function draw() {
  // shader()는 활성화 셰이더를 theShader로 설정합니다.
  shader(theShader);

  // rect()함수로 화면에 기하 추가하기
  rect(0,0,width, height);
}
