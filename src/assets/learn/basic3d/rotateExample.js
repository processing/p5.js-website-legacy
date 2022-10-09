let xRotateSlider, yRotateSlider, zRotateSlider, angleSlider;
let p;

function setup() {
  let canvas = createCanvas(350, 350, WEBGL);
  canvas.parent("sketchContainer")
  camera(0,-200,200,0,0,0)

  // note these are all angle ranges:
  xAxisSlider = document.querySelector('#xAxis');
  yAxisSlider = document.querySelector('#yAxis');
  zAxisSlider = document.querySelector('#zAxis');

  debugMode();

  p = document.querySelector('#axisText');

  describe('an interactive example that visualizes different axes of rotation on a torus shape');
}

function draw() {
  background(220);

  push();
  rotateX(xAxisSlider.value);
  rotateY(yAxisSlider.value);
  rotateZ(zAxisSlider.value);

  // draw lines along x, y, z axes in rotated space
  strokeWeight(4);
  stroke('red');
  line(0, 0, 0, 100, 0, 0);
  stroke('green');
  line(0, 0, 0, 0, 100, 0);
  stroke('blue');
  line(0, 0, 0, 0, 0, 100);

  normalMaterial();
  torus(30, 20);
  pop();

  noFill();

  p.innerHTML = 'angleMode(DEGREES) <br /><br />';
  p.innerHTML += 'rotateX('+parseFloat(degrees(xAxisSlider.value)).toFixed(1)+') <br />';
  p.innerHTML += 'rotateY('+parseFloat(degrees(yAxisSlider.value)).toFixed(1)+') <br />';
  p.innerHTML += 'rotateZ('+parseFloat(degrees(zAxisSlider.value)).toFixed(1)+') <br />';
}
