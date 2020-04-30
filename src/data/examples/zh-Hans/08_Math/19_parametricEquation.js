/*
 * @name 参数方程
 * @description 参数方程是 x 和 y 坐标都用另外的字母表示。
 * 这被称为参数并且通常以字母 t 或 θ 给出。
 * 灵感来源于 Alexander Miller 油管频道。
 */

function setup(){
  createCanvas(720,400);
}

// x 和 y 所依靠的参数通常被视为 t 或者 theta 的符号
let t = 0;
function draw(){
  background('#fff');
  translate(width/2,height/2);
  stroke('#0f0f0f');
  strokeWeight(1.5);
  // 迭代来增加 100 条直线
  for(let i = 0;i<100;i++){
    line(x1(t+i),y1(t+i),x2(t+i)+20,y2(t+i)+20);
  }
  t+=0.15;
}
// 改变直线的初始 x 坐标
function x1(t){
  return sin(t/10)*125+sin(t/20)*125+sin(t/30)*125;
}

// 改变直线的初始 y 坐标
function y1(t){
  return cos(t/10)*125+cos(t/20)*125+cos(t/30)*125;
}

// 改变直线的最终 x 坐标
function x2(t){
  return sin(t/15)*125+sin(t/25)*125+sin(t/35)*125;
}

// 改变直线的最终 y 坐标
function y2(t){
  return cos(t/15)*125+cos(t/25)*125+cos(t/35)*125;
}