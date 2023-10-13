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

  describe('an interactive example that visualizes how scale works on a box shape')
}

function draw() {
  background(220);
  camera(0,-200,200,0,0,0);
  
  push();
  scale(xSlider.value,ySlider.value,zSlider.value);
  box(50);

  strokeWeight(5);
  stroke(255,0,0);
  line(-25,0,25, 25,0,25);

  stroke(0,255,0);
  line(0,-25,25, 0,25,25);

  stroke(0,0,255);
  line(0,-25,-25, 0,-25,25);

  pop();
  
  // draw axes
  push();

  pop();
  
  p.innerHTML = 'scale('+parseFloat(xSlider.value).toFixed(2)+', '+parseFloat(ySlider.value).toFixed(2)+', '+parseFloat(zSlider.value).toFixed(2)+')';
}