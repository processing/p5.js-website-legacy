/*
 * @name Orbit Control
 * @arialabel Users can click on the screen and drag to move themselves around a 3D space. It consists of a white background with columns of purple cubes and green pyramids arched in curves. 
 * @description Orbit control allows you to drag and move around the world.
 */
function setup() {
  createCanvas(710, 400, WEBGL);
}

function draw() {
  background(250);
  let radius = width * 1.5;

  //drag to move the world.
  orbitControl();

  normalMaterial();
  translate(0, 0, -600);
  for (let i = 0; i <= 12; i++) {
    for (let j = 0; j <= 12; j++) {
      push();
      let a = (j / 12) * PI;
      let b = (i / 12) * PI;
      translate(
        sin(2 * a) * radius * sin(b),
        (cos(b) * radius) / 2,
        cos(2 * a) * radius * sin(b)
      );
      if (j % 2 === 0) {
        cone(30, 30);
      } else {
        box(30, 30, 30);
      }
      pop();
    }
  }
}
