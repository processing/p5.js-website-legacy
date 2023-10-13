/*
 * @name Trigonometry and Particles
 * @arialabel multiple white dot moving in pattern following trigonometry function 
 * @description Creative particle movement using cos(), sin() and tan(). You can sort 
 * through the different functions.
 */

let f = 0;
let value = 0;
let clicked = 0;
let x = 0;
let y = 0;
function Super_Tornado() {
  ratio = frameCount * 0.01;
  points = [];
  fill(255);
  for (let i = 0; i <= 360; i += 0.1) {
    let theta = radians(i * ratio);
    if (value == 0) {
      x = cos(theta) * i;
      y = sin(theta) * i;
    }
    if (value == 1) {
      x = cos(1 / theta) * i * tan(i);
      y = sin(1 / theta) * i * tan(i);
    }
    if (value == 2) {
      x = cos(theta) * log(i) * tan(i);
      y = sin(1 / theta) * log(i) * tan(i);
    }
    if (value == 3) {
      x = cos(theta) * i * tan(i);
      y = sin(log(theta)) * i / tan(i);
    }
    if (value == 4) {
      x = cos(theta) * i / 3 * sin(theta) * tan(f + 1);
      y = sin(1 / theta) * i / 3 * log(i) * tan(i);
    }
    ellipse(x, y, 3, 3);
    points.push({
      'x': x,
      'y': y
    })
  }
}
function setup() {
  createCanvas(400, 400);
  noStroke();
}
function draw() {
  background(30);
  translate(width / 2, height / 2);
  ratio = frameCount * 0.01;
  points = [];
  Super_Tornado();
}
function mouseClicked() {
  if (clicked < 5) {
    clicked++;
    value++;
  } else {
    clicked = 0;
    value = 0;
  }
}