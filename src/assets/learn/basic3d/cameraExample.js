let fovSlider;
let camPosX, camPosY, camPosZ;
let cameraTypeOrtho, cameraTypePerspective;
let methodText;

function setup() {
  let canvas = createCanvas(350, 350, WEBGL);
  canvas.parent('sketchContainer');

  debugMode();

  fovSlider = document.querySelector('#cameraFov');
  cameraTypeOrtho = document.querySelector('#cameraTypeOrtho');
  cameraTypePerspective = document.querySelector('#cameraTypePerspective');

  camPosX = document.querySelector('#cameraPosX');
  camPosY = document.querySelector('#cameraPosY');
  camPosZ = document.querySelector('#cameraPosZ');

  methodText = document.querySelector('#methodText');

  describe(
    'an interactive sketch that allows you to move either an ortho camera or a perspective camera in 3D, as well as change the perspective camera FOV'
  );
}

function draw() {
  background(220);

  if (cameraTypeOrtho.checked) {
    camera(camPosX.value, camPosY.value, camPosZ.value);
    ortho(-width / 2, width / 2, -height / 2, height / 2, 0, 800);
  } else if (cameraTypePerspective.checked) {
    camera(camPosX.value, camPosY.value, camPosZ.value);
    perspective(fovSlider.value);
  }

  box(50);

  methodText.innerHTML = cameraTypeOrtho.checked
    ? 'ortho(); </br>'
    : 'perspective(' + parseFloat(fovSlider.value).toFixed(1) + '); </br>';
  methodText.innerHTML +=
    '<br />camera(' +
    parseFloat(camPosX.value).toFixed(1) +
    ',' +
    parseFloat(camPosY.value).toFixed(1) +
    ',' +
    parseFloat(camPosZ.value).toFixed(1) +
    ');';

  fovSlider.disabled = cameraTypeOrtho.checked;
}
