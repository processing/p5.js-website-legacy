let shapeType;

let toggleNormalMaterial,
toggleAmbientMaterial,
toggleEmissiveMaterial,
toggleSpecularMaterial;

function setup() {
  let canvas = createCanvas(350, 350, WEBGL);
  canvas.parent("sketchContainer");

  debugMode();

  shapeType = document.querySelector('#shapeType');

  toggleNormalMaterial = document.querySelector('#toggleNormalMaterial');
  toggleAmbientMaterial = document.querySelector('#toggleAmbientMaterial');
  toggleEmissiveMaterial = document.querySelector('#toggleEmissiveMaterial');
  toggleSpecularMaterial = document.querySelector('#toggleSpecularMaterial');

  describe('an interactive example that allows you to toggle different materials on either a box or sphere shape');
}

function draw() {
  background(220);
  camera(0, -100, 250);

  let locX = mouseX - width / 2;
  let locY = mouseY - height / 2;
  specularColor(255);
  directionalLight(127, 127, 127, 1.0-locX, 1.0-locY, -1);
  ambientLight(64);  

  if(toggleNormalMaterial.checked) {
    normalMaterial();
  }

  if(toggleAmbientMaterial.checked) {
    ambientMaterial(128, 0, 0);
  }

  if(toggleEmissiveMaterial.checked) {
    emissiveMaterial(0, 0, 128);
  }

  if(toggleSpecularMaterial.checked) {
    specularMaterial(0, 128, 0);
  }

  if(shapeType.checked) {
    sphere(50);
  } else {
    push();
    rotateY(PI/4);
    box(50);
    pop();
  }  
  
  // draw debug point light
  push();
  translate(locX, locY, 50);
  scale(0.2);
  noLights();
  fill('blue');
  sphere();
  pop();
}