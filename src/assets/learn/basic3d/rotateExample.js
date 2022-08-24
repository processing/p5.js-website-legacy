let xRotateSlider, yRotateSlider, zRotateSlider, angleSlider;
let p;

function setup() {
  let canvas = createCanvas(350, 350, WEBGL);
  canvas.parent("sketchContainer")
  
  camera(0,-200,200,0,0,0)

  //angleSlider = createSlider(0, PI * 2, 0, 0.001);

  // note these are all angle ranges:
  xAxisSlider = document.querySelector('#xAxis');
  yAxisSlider = document.querySelector('#yAxis');
  zAxisSlider = document.querySelector('#zAxis');

  debugMode();

  p = document.querySelector('#axisText')
}

function draw() {
  background(220);
  // orbitControl();

  // let rotateVector = createVector(
  //   xAxisSlider.value(),
  //   yAxisSlider.value(),
  //   zAxisSlider.value()
  // );
  
  push();
  // rotateVector.normalize()
  // rotate(angleSlider.value(), rotateVector);
  
  // added:
  rotateX(xAxisSlider.value);
  rotateY(yAxisSlider.value);
  rotateZ(zAxisSlider.value);
  
  // also added: draw lines along x, y, z axes in rotated space
  strokeWeight(4);
  line(0, 0, 0, 100, 0, 0);
  line(0, 0, 0, 0, 100, 0);
  line(0, 0, 0, 0, 0, 100);
  
  normalMaterial();
  torus(30, 20);
  pop();

  noFill();

  p.innerHTML = 'rotateX('+parseFloat(xAxisSlider.value).toFixed(3)+') <br />';
  p.innerHTML += 'rotateY('+parseFloat(yAxisSlider.value).toFixed(3)+') <br />';
  p.innerHTML += 'rotateZ('+parseFloat(zAxisSlider.value).toFixed(3)+') <br />'

//   // draw axes vector
//   push();
  
//   /*  
//     here I should be able to apply a rotation
//     that will align the visualization to the rotateAxis
    
//     I can't seem to figure out how calculate the right rotation.
//   */
  
//   let a = rotateVector
//   let b = createVector(0,-1,0)
//   let na = a.copy() 
//   let nb = b.copy()
  
//   na.normalize()
//   nb.normalize()
  
//   let angle = acos(p5.Vector.dot(na,nb))
//   let c = p5.Vector.cross(a,b)
  
//   rotate(-angle, c)

//   stroke(0);
//   strokeWeight(5);
//   // line(
//   //   -100,
//   //   0,
//   //   0,
//   //   100,
//   //   0,
//   //   0
//   // );
  
//   // rotate so that arc is oriented correctly
//   // this seems to work correctly
//   rotateX(PI / 2);
//   stroke(255, 0, 255);
//   arc(0, 0, 200, 200, 0, angleSlider.value());
//   pop();
  
//   scale(1000);
  
//     line(
//     -xAxisSlider.value(),
//     -yAxisSlider.value(),
//     -zAxisSlider.value(),
//     xAxisSlider.value(),
//     yAxisSlider.value(),
//     zAxisSlider.value()
//   );
}
