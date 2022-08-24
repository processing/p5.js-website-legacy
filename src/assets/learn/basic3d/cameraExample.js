let fovSlider;
let selectCameraType;
let cameraType;

function setup() {
  let canvas = createCanvas(350, 350, WEBGL);
  canvas.parent("sketchContainer")

  debugMode();
  
  fovSlider = document.querySelector('#cameraFov')
  selectCameraType = document.querySelector('#cameraType')
}

function draw() {
  background(220);
  camera(200,-200,200)

  cameraType = selectCameraType.value;
  
  if(cameraType === 'ortho') {
    ortho(-width / 2, width / 2, height / 2, -height / 2, 0, 500);
  } else {
    perspective(fovSlider.value)
  }
  
  box(50);
}

function cameraTypeChanged(e) {
  console.log(selectCameraType.value)
}