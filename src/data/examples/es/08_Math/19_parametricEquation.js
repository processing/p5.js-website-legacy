/*
 * @name Ecuaciones Paramétricas
 * @description Una ecuación paramétrica es una en la cual las coordenadas x e y
 * están escritas en términos de otra variable.
 * Esto se llama un parámetro y se suele dar en la letra t o θ.
 * La inspiración se tomó del canal de YouTube de Alexander Miller.
 */

function setup(){
  createCanvas(720,400);
}

// el parámetro del que dependen x e y
// se suele designar con la letra t o el símbolo de theta
let t = 0;
function draw(){
  background('#fff');
  translate(width/2,height/2);
  stroke('#0f0f0f');
  strokeWeight(1.5);
  //bucle para añadir 100 líneas
  for(let i = 0;i<100;i++){
    line(x1(t+i),y1(t+i),x2(t+i)+20,y2(t+i)+20);
  }
  t+=0.15;
}
// función para cambiar la coordenada inicial x de la línea
function x1(t){
  return sin(t/10)*125+sin(t/20)*125+sin(t/30)*125;
}

// función para cambiar la coordenada y inicial de la línea
function y1(t){
  return cos(t/10)*125+cos(t/20)*125+cos(t/30)*125;
}

// función para cambiar la coordenada x final de la línea
function x2(t){
  return sin(t/15)*125+sin(t/25)*125+sin(t/35)*125;
}

// función para cambiar la coordenada final de la línea
function y2(t){
  return cos(t/15)*125+cos(t/25)*125+cos(t/35)*125;
}
