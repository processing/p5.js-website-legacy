let selectLightType;

function setup() {
  let canvas = createCanvas(350, 350, WEBGL);
  canvas.parent("sketchContainer")

  debugMode();

  selectLightType = document.querySelector('#lightType')
}

function draw() {
  background(220);
  camera(200, -200, 200);

  lightType = selectLightType.value;

  switch (lightType) {
    case "ambient":
      ambientLight(50);
      break;
    case "directional":
      directionalLight(255, 0, 0, 0.25, 0.25, 0);
      break;
    case "spotlight":
      spotLight(0, 255, 0, 150, 0, 250, 0, 0, -1);
      break;
    case "point":
      // pointLight(0, 0, 255, locX, locY, 250);
      break;
  }

  box(50);
}