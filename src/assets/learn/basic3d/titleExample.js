let textModel, asteriskModel;

function preload() {
  textModel = loadModel("../basic3d/models/basicScene.obj", true);
  asteriskModel = loadModel("../basic3d/models/asterisk.obj", true);
}

function setup() {
  createCanvas(window.innerWidth, window.innerHeight, WEBGL);
  debugMode();
  describe("3D pink text that reads: p5.js getting started with 3D, with swirling 3D p5.js asterisk logo and coordinate system illustration");
}

function draw() {
  background(255);
  camera(40, -60, 350, 22, -50, 0);

  let rotateSpeed = 2000;

  let swarmCenter = createVector(
    sin(millis() / rotateSpeed) * 200,
    sin((millis() / rotateSpeed) * 1.5) * 100,
    cos(millis() / rotateSpeed) * 50
  );

  pointLight(80, 80, 80, swarmCenter);
  directionalLight(20, 20, 20, 0, 0, 100);

  ambientLight(255);

  push();
  shininess(1);
  specularMaterial(255, 34, 93);
  noStroke();
  rotateX(PI);
  scale(4);
  translate(0, 19, 0);
  model(textModel);
  pop();

  for (let i = 1; i < 6; i++) {
    let offset = createVector(
      cos(((millis() * i) / 1000) * 0.6),
      sin(((millis() * i) / 1000) * 0.5),
      cos(((millis() * i) / 1000) * 0.4)
    );

    offset.mult(50);

    push();
    strokeWeight(1);
    specularMaterial(255, 34, 93);
    noStroke();
    translate(swarmCenter.add(offset));

    rotateX(PI);
    rotateY((i * millis()) / 2000);
    rotateZ((i * millis()) / 2000);
    scale(0.05 * i);
    model(asteriskModel);
    pop();
  }
}

function windowResized() {
  resizeCanvas(windowWidth, windowHeight);
}
