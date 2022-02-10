/*
  * @name झुका हुआ 3D बॉक्स
  * @description बॉक्स को झुकाने के लिए मोबाइल का इस्तेमाल करें
  */
function setup() {
  createCanvas(displayWidth, displayHeight, WEBGL);
}

function draw() {
  background(250);
  normalMaterial();
  rotateX(accelerationX * 0.01);
  rotateY(accelerationY * 0.01);
  box(100, 100, 100);
}
