/*
 * @name Control de órbita
 * @description El control de órbita te permite arrastrar y mover alrededor del mundo.
 */
function setup() {
  createCanvas(710, 400, WEBGL);
}

function draw() {
  background(250);
  let radius = width * 1.5;

  //arrastra para mover el mundo.
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
