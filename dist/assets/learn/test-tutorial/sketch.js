var angle = 360.0;
var x1 =200;
var y1 =350;
var d = 300;

var x2 =350;
var y2 =200;

var xx=0;
var yy=0;
var cx=380;
var cy=200;

var tx = 20;

var ty = 20;

var aSlider;


function setup() {
  createCanvas(600, 400);
  smooth();
  noFill();
  aSlider= createSlider(0,360,60);
  aSlider.position(tx-5, ty+10);
  //put in the css width for the slider
  textFont("Georgia");
  smooth();

}

function draw(){
  background(255);
  stroke(200);
  strokeWeight(1);
  noFill();
  rect(10,105,170,275);
  axes();
  circle();
  x1y1();
  x2y2();
  arcCalc();
  calculations();
  trigCalcs();

}

function labels(){
  console.log("angle="+angle);
  if(angle==90||angle==0||angle==180||angle==270){

  }else{
    stroke(0);
    fill(0);
    text("r",(x1+cx)/2+5,(cy+y1)/2+7);
    text("x",(x1+cx)/2,cy-5);
    text("y",x1-10,(y1+cy)/2);
  }

}

function calculations(){
  stroke(237,34,93);
  fill(237,34,93);
  //axis lables
  text("90",cx-5,85);
  text("\u03C0"+" / 2",cx-10,65);
  text("0",cx+d/2-10,cy-3);
  text("0",cx+d/2-25,cy-3);
  text("270",cx-10,cy+d/2-30);
  text("3 / 2 "+"\u03C0",cx-15,cy+d/2-10);
  text("180",cx-d/2+25,cy-3);
  text("\u03C0",cx-d/2+10,cy-3);
  //cartesian
  stroke(0);
  fill(0);
  text("(0,1)",cx-10,40);
  text("(1,0)",cx+d/2+10,cy-3);
  text("(-1,0)",cx-d/2-30,cy-3);
  text("(0,-1)",cx-10,cy+d/2+20);
  stroke(237,34,93);
  fill(237,34,93);
  textSize(13);

  //key
  text("Change the angle:",tx,ty);
  text("angle = "+round(360-angle) + " degrees",tx,ty+50);
  text("angle = "+(radians(360-angle)/PI).toFixed(2) + " \u03C0 radians",tx,ty+70);
  stroke(0);
  fill(0);
  textSize(12);
  text("To calculate the coordinates",tx,ty+105);
  text("of the point:",tx,ty+120);


}

function x1y1(){
  //calculate x1
  x1=d/2*cos(radians(angle))+cx;
  //calculate y1
  y1=d/2*sin(radians(angle))+cy;

}

function x2y2(){
  //curve
  noFill();
  //calculate x1
  x2=d/2*cos(radians(angle))+20;
  //calculate y1
  y2=d/2*sin(radians(angle))+20;
  stroke(200);

}

function arcCalc(){
  stroke(237,34,93);
  arc(cx, cy, 60, 60, radians(angle), 0+2*PI );

}

function trigCalcs(){
  var l =18;
  //lables for trig calculations
  text("r = 1",tx,ty+140);

  text("C = A / H",tx,ty+170);
  text("A / H = C",tx,ty+170+l);
  text("x/r = cos(angle)",tx,ty+170+2*l);
  text("x/1 = cos("+(radians(360-angle)/PI).toFixed(2) +" \u03C0)",tx,ty+170+3*l);
  xx =(cos(radians(angle)).toFixed(2));
  text("x = "+xx,tx,ty+170+4*l);
  text("S = O / A",tx,ty+170+6*l);
  text("O / A = S",tx,ty+170+7*l);
  text("y/r = sin(angle)",tx,ty+170+8*l);
  text("y/1 = sin("+(radians(360-angle)/PI).toFixed(2) +" \u03C0)",tx,ty+170+9*l);
  yy = (-1*sin(radians(angle)).toFixed(2));


  text("y = "+yy,tx,ty+170+10*l);
}

function circle(){
  //draw circle and triangle stuff
  stroke(0);
  angle=(360-aSlider.value());
  noFill();
  //big circle
  ellipse(cx,cy,d,d);

  strokeWeight(3);
  stroke(0);
  fill(237,34,93);
  line(x1,y1,x1,cy); //opposite
  line(x1,cy,cx,cy); //x
  line(cx,cy,x1,y1);
  strokeWeight(1);
  stroke(0);
  fill(237,34,93);
  ellipse(x1,y1,7,7);
  ellipseMode();
  var a;
  var b=0;
  var f=0;
  if(xx>0){
    textAlign(LEFT);
    a=1;
  }else{
    textAlign(RIGHT);
    a=-1;
  }

  if(yy<-0.9){
    b=2;
  }
  else if(yy>0.9){
    b=-1;
  }
  if(xx==0||yy==0){
    f=0;
  }else{
    f=255
  }

  stroke(0,f);
  fill(0,f);
  text("("+xx+","+yy+")",x1+5*a,y1+5*b);
  textAlign(LEFT);
  strokeWeight(1)
  labels();
  noFill();

}

function axes(){
  //axis
  stroke(0);
  //y
  line(cx,cy-d/2-20,cx,cy+d/2+20);
  //x
  line(cx-d/2-20,cy,cx+d/2+20,cy);
}
