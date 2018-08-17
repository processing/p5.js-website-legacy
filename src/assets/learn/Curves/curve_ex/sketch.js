var x1 = 80;
var y1 = 80;
var x2 = 160;
var y2 = 120;
var x3 = 200;
var y3 = 200;
var x4 = 120;
var y4 = 240;
var d1=false;
var d2=false;
var d4=false;
var d3=false;
var d5=false;

function setup() {
  createCanvas(300, 300);
}

function draw() {
  background(255);
  stroke(0);
  curve(x1, y1, x2, y2, x3, y3, x4, y4);
  noStroke();
  fill(255, 0, 0);
  ellipse(x1, y1, 10, 10);
  fill(0, 0, 255, 192);
  ellipse(x3, y3, 10, 10);
  ellipse(x2, y2, 10, 10);
  fill(255, 0, 0);
  ellipse(x4, y4, 10, 10);  
  
  noStroke();
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
  if(dist(mouseX,mouseY,x5,y5)<10){
d5=true;
    
  }
}

function mouseReleased(){

    d1=false;
     d2=false;
      d3=false;
       d4=false;
        d5=false;

}
  
  
