var angle = 360.0;
var x1 =200;
var y1 =350;
var d = 180;

var x2 =350;
var y2 =200;

var cx=200;
var cy=200;

var f=1;
var f2 = 2;

var p=0;
//axis margins
var ax = 80;
var ay = 80;

var play = 1;

var ex =465;
var ey =480;


function setup() {

  createCanvas(800, 750);
  textFont("Georgia");
  smooth();
  noFill();
  rect(0, 0, width-1, height-1);
}

function draw() {
  background(255);
  buttons();
  greyGuides();
  circle();
  pointCalcs();
  track();
  circleEllipses();
  waves();
  circleLabels();

  bgLabels();
  pLabels();
  console.log("p="+p);
  console.log("angle="+angle);

}

function buttons(){
  stroke(0);
  //labels

  //button
  fill(237,34,93);
  ellipse(ex,ey,30,30);

  stroke(255);
  fill(255);



  if(play===1){
    angle=angle-f;
    text("II",ex-4,ey+4);
  }else{
    text(">",ex-4,ey+4);
    stroke(255);

  }

}


function waves(){
  stroke(237,34,93);
  fill(237,34,93);

  //bouncing ellipses

  ellipse(cx + d/2+p, y1, 5,5); // sin ball
  ellipse(x1,cy+p+d/2, 5,5); // cos ball


  angle2=0;
  stroke(237,34,93);
  for(var i=0;i<p;i++){


    px2 = cx + cos(radians(angle2))*(d/2);
    py2 = cy + sin(radians(angle2))*(d/2);
    //sin
    point(cx+d/2+i, py2);
    //cos
    point(px2,cy+i+d/2);
    angle2 =angle2- f2;


  }


  p=180-(angle/2);

  if(angle<-360){

    angle=360.0;
  }

}

function circleEllipses(){
  fill(237,34,93);
  stroke(0);
  //circle ellipse
  ellipse(cx,cy,5,5);
  ellipse(x1,y1,5,5);
}

function circleLabels(){

  stroke(0);
  fill(0);

  //labels
  text("90",cx-5,cy-d/2-20);
  text("\u03C0"+" / 2",cx-10,cy-d/2-40);
  text("0",cx+d/2+20,cy+5);
  text("0",cx+d/2+5,cy+5);
  text("270",cx-10,cy+d/2+20);
  text("3 / 2 "+"\u03C0",cx-15,cy+d/2+40);
  text("180",cx-d/2-30,cy+5);
  text("\u03C0",cx-d/2-45,cy+5);

}
function pointCalcs(){

  //calculate x1
  x1=d/2*cos(radians(angle))+cx;
  //calculate y1
  y1=d/2*sin(radians(angle))+cy;


}

function greyGuides(){
  stroke(220);
  //guide lines
  line(cx-d/2,cy,cx-d/2,cy+2.5*d);
  line(cx+d/2,cy,cx+d/2,cy+2.5*d);

  line(cx,cy,cx,cy+2.5*d);
  line(cx,cy-d/2,cx+450,cy-d/2);
  line(cx,cy+d/2,cx+450,cy+d/2);
  line(cx,cy,cx+450,cy);

  //angle lines
  //cos
  line(cx-d/2,cy+d/2,cx+d/2,cy+d/2);
  line(cx-d/2,cy+3*d/2,cx+d/2,cy+3*d/2);
  line(cx-d/2,cy+2.5*d,cx+d/2,cy+2.5*d);
  //sin
  line(cx+d*0.5,cy-d/2,cx+d*0.5,cy+d/2);
  line(cx+d*1.5,cy-d/2,cx+d*1.5,cy+d/2);
  line(cx+d*2.5,cy-d/2,cx+d*2.5,cy+d/2);

}
function circle(){

  //axis
  stroke(0);
  line(cx-d/2,cy,cx+d/2,cy);
  line(cx,cy-d/2,cx,cy+d/2);
  noFill();
  //big circle
  ellipse(cx,cy,d,d);
}

function pLabels(){
  stroke(237,34,93);
  fill(237,34,93);
  textSize(14);
  //key
  text("angle = "+round(360-angle) + " degrees",width-350,height-210);
  text("angle = "+radians(360-angle).toFixed(2) + " radians",width-350,height-180);
  text("cos(angle) = "+((x1-cx)/(d/2)).toFixed(2),width-350,height-150);
  text("sin(angle) = "+(-(y1-cy)/(d/2)).toFixed(2) ,width-350,height-120);

}

function track(){

  fill(0);
  stroke(200);
  line(cx,cy,x1,y1)
  line(x1,y1,cx + d/2+p, y1);//sin tracker
  line(x1,y1,x1,cy+p+d/2);//cos tracker

}

function bgLabels(){
  stroke(200);
  fill(200);
  //1 and -1 for cos
  text("1",cx+d/2-3,cy+2.5*d+15);
  text("0",cx-3,cy+2.5*d+15);
  text("-1",cx-d/2-3,cy+2.5*d+15);

  //1 and -1 for sin
  text("-1",cx+450+15,cy+d/2-3);
  text("0",cx+450+15,cy-3);
  text("1",cx+450+15,cy-d/2+5);


  //axis labels sine
  stroke(200);
  text("angle",d/2+370,80);
  text("0",d/2+200,100);
  text("\u03C0",d/2+380,100);
  text("2"+"\u03C0",d/2+550,100);

  //axis labels cos
  text("angle",30,300+d);
  text("0",90,300);
  text("\u03C0",90,d+300);
  text("2"+"\u03C0",90,cy+2.5*d);


  text("cos(angle)",170,cy+2.5*d+30);
  text("sin(angle)",cy+360+130,200);
}

function mousePressed() {
  if(dist(mouseX,mouseY,ex,ey)<30){
    play=play*-1;
  }

}
