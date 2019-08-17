function setup(){
  createCanvas(100, 100);
  loadImage("/assets/learn/program-flow/images/clouds.jpg", drawImage);
  noLoop();
}

function draw(){
  background(200);
}

function drawImage(img){
  image(img, 0, 0);
}