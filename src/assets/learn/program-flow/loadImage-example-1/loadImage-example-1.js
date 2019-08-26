let img;
function setup(){
  createCanvas(100, 100);
  img = loadImage("/assets/learn/program-flow/images/clouds.jpg");
  noLoop();
}

function draw(){
  background(200);
  image(img,0,0);
}