let shapeType;

let toggleNormalMaterial,
toggleAmbientMaterial,
toggleEmissiveMaterial,
toggleSpecularMaterial;

function setup() {
  let canvas = createCanvas(350, 350, WEBGL);
  canvas.parent("sketchContainer")

  debugMode();

  shapeType = document.querySelector('#shapeType')

  toggleNormalMaterial = document.querySelector('#toggleNormalMaterial')
  toggleAmbientMaterial = document.querySelector('#toggleAmbientMaterial')
  toggleEmissiveMaterial = document.querySelector('#toggleEmissiveMaterial')
  toggleSpecularMaterial = document.querySelector('#toggleSpecularMaterial')
}

function draw() {
  background(220);
  camera(0, -100, 250);

  let locX = mouseX - width / 2;
  let locY = mouseY - height / 2;
  pointLight(255, 255, 255, locX, locY, 50);

  if(toggleNormalMaterial.checked) {
    normalMaterial();
  }

  if(toggleAmbientMaterial.checked) {
    ambientMaterial(255, 0, 0);
  }

  if(toggleEmissiveMaterial.checked) {
    emissiveMaterial(0, 255, 0);
  }

  if(toggleSpecularMaterial.checked) {
    specularMaterial(0, 0, 255);
  }

  if(shapeType.checked) {
    sphere(50);
  } else {
    push();
    rotateY(PI/4)
    box(50);
    pop();
  }  
  
  // draw debug point light
  push();
  translate(locX, locY, 50);
  scale(0.2);
  noLights()
  fill('blue');
  sphere();
  pop();
}