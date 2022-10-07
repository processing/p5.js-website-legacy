let fovSlider;
let camPosX, camPosY, camPosZ;
let selectCameraType;
let cameraType;
let methodText;

function setup() {
  let canvas = createCanvas(350, 350, WEBGL);
  canvas.parent("sketchContainer")

  debugMode();
  
  fovSlider = document.querySelector('#cameraFov')
  selectCameraType = document.querySelector('#cameraType')

  camPosX = document.querySelector('#cameraPosX')
  camPosY = document.querySelector('#cameraPosY')
  camPosZ = document.querySelector('#cameraPosZ')

  methodText = document.querySelector('#methodText')
}

function draw() {
  background(220);
  
  // orbitControl()

  if(selectCameraType.checked) {
    camera(camPosX.value,camPosY.value,camPosZ.value)
    ortho(-width / 2, width / 2, -height / 2, height / 2, 0, 500);
  } else {
    camera(camPosX.value,camPosY.value,camPosZ.value)
    perspective(fovSlider.value)
  } 

  box(50);

  methodText.innerHTML = selectCameraType.checked ? 'ortho(); </br>' : 'perspective('+parseFloat(fovSlider.value).toFixed(1)+'); </br>'
  methodText.innerHTML += '<br />camera('+parseFloat(camPosX.value).toFixed(1)+','+parseFloat(camPosY.value).toFixed(1)+','+parseFloat(camPosZ.value).toFixed(1)+');'
}