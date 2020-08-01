/*
 * @name 매개변수 방정식
 * @description 매개변수 방정식은 x와 y 좌표값이 다른 문자로서 표기된 식을 말합니다.
 * 이러한 문자를 매개변수라 부르며, 일반적으로 t 또는 θ로 표기됩니다.
 * 알렉산더 밀러(Alexander Miller)의 유투브 채널로부터 영감을 얻었습니다.
 */

function setup(){
  createCanvas(720,400);
}

// x와 y의 매개변수는 일반적으로 세타(theta)를 뜻하는 't' 또는 그 기호(θ)로 표기됩니다.
let t = 0;
function draw(){
  background('#fff');
  translate(width/2,height/2);
  stroke('#0f0f0f');
  strokeWeight(1.5);
  //100개의 선 추가를 위한 반복문
  for(let i = 0;i<100;i++){
    line(x1(t+i),y1(t+i),x2(t+i)+20,y2(t+i)+20);
  }
  t+=0.15;
}
// 선의 초기 x 좌표값을 변경하는 함수 
function x1(t){
  return sin(t/10)*125+sin(t/20)*125+sin(t/30)*125;
}

// 선의 초기 y 좌표값을 변경하는 함수
function y1(t){
  return cos(t/10)*125+cos(t/20)*125+cos(t/30)*125;
}

// 선의 최종 x 좌표값을 변경하는 함수
function x2(t){
  return sin(t/15)*125+sin(t/25)*125+sin(t/35)*125;
}

// 선의 최종 y 좌표값을 변경하는 함수
function y2(t){
  return cos(t/15)*125+cos(t/25)*125+cos(t/35)*125;
}