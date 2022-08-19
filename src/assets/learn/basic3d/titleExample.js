let textModel, asteriskModel;

function preload() {
  textModel = loadModel("../../assets/learn/models/basicScene.obj", true);
  asteriskModel = loadModel("../../assets/learn/models/asterisk.obj", true);
}

function setup() {
  createCanvas(720, 300, WEBGL);
  debugMode();
  describe("a basic 3d scene with animation and webgl");
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
    // translate(
    //   sin((millis() / rotateSpeed) * (0.2*i)) * 200,
    //   sin((millis() / rotateSpeed) * (0.5*i)) * 100,
    //   cos((millis() / rotateSpeed) * (0.2*i)) * 200
    // )

    rotateX(PI);
    rotateY((i * millis()) / 2000);
    rotateZ((i * millis()) / 2000);
    scale(0.05 * i);
    model(asteriskModel);
    pop();
  }
}
