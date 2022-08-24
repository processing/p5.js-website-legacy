let fovSlider;
let selectMaterialType;
let materialType;

function setup() {
  let canvas = createCanvas(350, 350, WEBGL);
  canvas.parent("sketchContainer")

  debugMode();

  selectMaterialType = document.querySelector('#materialType')
}

function draw() {
  background(220);
  camera(200, -200, 200);

  materialType = selectMaterialType.value;
  
  let locX = mouseX - width / 2;
  let locY = mouseY - height / 2;
  pointLight(255, 255, 255, locX, locY, 50);

  switch (materialType) {
    case "normalMaterial":
      normalMaterial();
      break;
    case "ambientMaterial":
      ambientMaterial(255, 0, 0);
      break;
    case "emissiveMaterial":
      emissiveMaterial(0, 255, 0);
      break;
    case "specularMaterial":
      specularMaterial(0, 0, 255);
      break;
  }

  box(50);
}