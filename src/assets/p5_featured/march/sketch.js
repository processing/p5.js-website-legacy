var texts = ['UNITE WITH LOVE, RESIST WITH LOVE',
  'TOGETHER, WE RISE',
  'WOMEN\'S RIGHTS ARE HUMAN RIGHTS',
  'EXPECT US',
  'LOVE',
  'RESPECT',
  'RISE UP',
  'EQUALITY',
  'HUMAN RIGHTS FOR ALL',
  'SOLIDARITY',
  'WE ARE ALL EQUAL',
  'LOVE WINS',
  'TOGETHER',
  'STAY WOKE',
  'I LOVE YOU',
  'NASTY ARTIST CODER WOMEN',
  'WE ARE THE FUTURE',
  'STAND TOGETHER',
  'CELEBRATE DIFFERENCES',
  'INDIVISIBLE',
  'WE GO HIGH',
  'HOPE NOT FEAR',
  'REACH OUT',
  'LET\'S LISTEN TO EACH OTHER'];

var i;
var dir = 0;
var a = 0;

function setup() {
  createCanvas(windowWidth, windowHeight);
  textAlign(CENTER);
  textFont('Open Sans');
  noStroke();
  setInterval(startFadeOut, 10000);
}

function draw() {
  a += dir;
  if (a <= 0) {
    dir = 3;
    switchText();
  } if (a >= 255) {
    dir = 0;
  }
  background(255);
  fill(220, a);
  textSize(1);
  var w = textWidth(texts[i]);
  var s = 0.9*windowWidth/w;
  textSize(s);
  text(texts[i], width/2, height/2+s*0.33);
}

function switchText() {
  var lasti = i;
  while (i == lasti) {
    i = Math.floor(Math.random()*texts.length);
  }
}

function startFadeOut() {
  dir = -3;
}