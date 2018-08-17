var x1 = 100;
var y1 = 150;
var x2 = 200;
var y2 = 150;
var x3 = 50;
var y3 = 50;
var x4 = 250;
var y4 = 50;
var d1=false;
var d2=false;
var d4=false;
var d3=false;

function setup() {
  createCanvas(400, 400);
}

function draw() {
  background(255);
  ellipse(x1, y1, 10, 10); // endpoints of curve
  ellipse(x2, y2, 10, 10);
  fill(255, 0, 0);
  ellipse(x3, y3, 10, 10);  // control points
  ellipse(x4, y4, 10, 10); 
  noFill();
  stroke(0);
  bezier(x1, y1, x3, y3, x4, y4, x2, y2); 
  
    noStroke();

  fill(0,0,255,100);
  text("("+x1+","+y1+")",x1,y1);
  text("("+x2+","+y2+")",x2,y2);
  text("("+x3+","+y3+")",x3,y3);
  text("("+x4+","+y4+")",x4,y4);

    if(d1){
        x1=mouseX;
    y1=mouseY;
  }
      if(d2){
        x2=mouseX;
    y2=mouseY;
  }
      if(d3){
        x3=mouseX;
    y3=mouseY;
  }
      if(d4){
        x4=mouseX;
    y4=mouseY;
  }
}

function mouseDragged(){

  if(dist(mouseX,mouseY,x1,y1)<10){
d1=true;

  }
    if(dist(mouseX,mouseY,x2,y2)<10){
d2=true;

  }
    if(dist(mouseX,mouseY,x3,y3)<10){
d3=true;

  }
    if(dist(mouseX,mouseY,x4,y4)<10){
d4=true;

  }

}

function mouseReleased(){

    d1=false;
     d2=false;
      d3=false;
       d4=false;

}
