let xSlider, ySlider, zSlider;
let p;

function setup() {
  let canvas = createCanvas(350, 350, WEBGL);
  canvas.parent("sketchContainer");

  debugMode();

  xSlider = document.querySelector('#xAxis');
  ySlider = document.querySelector('#yAxis');
  zSlider = document.querySelector('#zAxis');

  p = document.querySelector('#axisText');

  describe('an interactive example that visualizes translation on a box shape');
}

function draw() {
  background(220);
  camera(0,-200,200,0,0,0);

  push();
  translate(xSlider.value,ySlider.value,zSlider.value);
  box(50);
  pop();

  // draw axes
  push();
  strokeWeight(5);
  stroke(255,0,0);
  line(0,0,0, xSlider.value,0,0);
  
  translate(xSlider.value,0,0);
  stroke(0,255,0);
  line(0,0,0, 0, ySlider.value, 0);
  
  translate(0,ySlider.value,0);
  stroke(0,0,255);
  line(0,0,0, 0, 0, zSlider.value);
  pop();

  p.innerHTML = 'translate('+parseFloat(xSlider.value).toFixed(3)+','+parseFloat(ySlider.value).toFixed(3)+','+parseFloat(zSlider.value).toFixed(3)+') <br />';
}