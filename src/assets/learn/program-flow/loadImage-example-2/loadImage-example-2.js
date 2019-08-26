let img;
function preload(){
  img = loadImage("/assets/learn/program-flow/images/clouds.jpg");
}

function setup(){
  createCanvas(100, 100);
  noLoop();
}

function draw(){
  background(200);
  image(img,0,0);
}