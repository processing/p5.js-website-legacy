/*
  * @name कक्षा नियंत्रण
  * @description कक्षा नियंत्रण आपको दुनिया भर में खींचने और स्थानांतरित करने की अनुमति देता है।
  */
let cam;
function setup() {
  createCanvas(710, 400, WEBGL);
  cam = createCamera();
  cam.setPosition(0, 0, 0);
}

function draw() {
  background(250);
  let radius = width * 1.5;

  // दुनिया को स्थानांतरित करने के लिए खींचें।
  orbitControl();

  normalMaterial();
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
