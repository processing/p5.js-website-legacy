/*
 * @name Pixeles de video
 * @frame 320,240
 * @description Cargar un video, manipula sus pixeles y dibújalo en el lienzo.
 * Para correr este ejemplo localmente, necesitarás correr un 
 * <a href="https://github.com/processing/p5.js/wiki/Local-server">servidor local</a>.
 */
let fingers;

function setup() {
  createCanvas(320, 240);
  // especifica múltples formatos para distintos navegadores
  fingers = createVideo(['assets/fingers.mov', 'assets/fingers.webm']);
  fingers.loop();
  fingers.hide();
  noStroke();
  fill(0);
}

function draw() {
  background(255);
  fingers.loadPixels();
  const stepSize = round(constrain(mouseX / 8, 6, 32));
  for (let y = 0; y < height; y += stepSize) {
    for (let x = 0; x < width; x += stepSize) {
      const i = y * width + x;
      const darkness = (255 - fingers.pixels[i * 4]) / 255;
      const radius = stepSize * darkness;
      ellipse(x, y, radius, radius);
    }
  }
}
