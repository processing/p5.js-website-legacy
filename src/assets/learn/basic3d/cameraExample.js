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
  

  cameraType = selectCameraType.value;
  
  if(cameraType === 'ortho') {
    camera(200,-200,200)
    ortho(-width / 2, width / 2, -height / 2, height / 2, 0, 500);
  } else if(cameraType === 'perspective'){
    camera(200,-200,200)
    perspective(fovSlider.value)
  } else {
    orbitControl()
  }
  
  box(50);
}

function cameraTypeChanged(e) {
  console.log(selectCameraType.value)
}