let toggleAmbient, toggleDirectional, toggleSpotlight, togglePoint;

let pointX, pointY, pointZ;
let spotX, spotY, spotZ;
let directionX, directionY, directionZ;

function setup() {
  let canvas = createCanvas(350, 350, WEBGL);
  canvas.parent("sketchContainer");

  debugMode();

  toggleAmbient = document.querySelector("#toggleAmbient");
  toggleDirectional = document.querySelector("#toggleDirectional");
  toggleSpotlight = document.querySelector("#toggleSpotlight");
  togglePoint = document.querySelector("#togglePoint");

  describe(
    'an interactive sketch that allows you to toggle on and off a number of different lights with indicators on a box shape.'
  );
}

function draw() {
  background(220);
  camera(200, -200, 200);

  noStroke();

  directionX = 0
  directionY = -1
  directionZ = 0

  pointX = 80;
  pointY = -20;
  pointZ = 0;

  spotX = 0
  spotY = -10
  spotZ = 150

  push();
  if (toggleAmbient.checked) ambientLight(50);

  if (toggleDirectional.checked) directionalLight(255, 0, 0, 0.25, 0.25, 0);

  if (toggleSpotlight.checked) spotLight(0, 255, 0, spotX, spotY, spotZ, 0, 0, -1);

  if (togglePoint.checked) pointLight(0, 0, 255, pointX, pointY, pointZ);

  box(50);
  pop();

  // draw debug directional light
  if (toggleDirectional.checked) {
    push();
    translate(0,-150,0);
    scale(0.3);
    fill('red');
    cone();
    pop();  
  }

  // draw debug spotlight
  if (toggleSpotlight.checked) {
    push();
    translate(spotX, spotY, spotZ);
    scale(0.3);
    rotateX(PI /2)
    fill('green');
    cone();
    pop();  
  }

  // draw debug point light
  if (togglePoint.checked) {
    push();
    translate(pointX, pointY, pointZ);
    scale(0.2);
    fill('blue');
    sphere();
    pop();
  }
}
