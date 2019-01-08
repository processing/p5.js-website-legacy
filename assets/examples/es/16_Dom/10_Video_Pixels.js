/*
 * @name Pixeles de video
 * @frame 320,240
 * @description <p> Cargar un video, manipula sus pixeles y dibújalo en el lienzo.
 * <p><em><span class="small"> Para correr este ejemplo localmente, necesitarás la
 * <a href="http://p5js.org/reference/#/libraries/p5.dom">biblioteca p5.dom</a>
 *, al menos un archivo de video y correr un <a href="https://github.com/processing/p5.js/wiki/Local-server">servidor local</a>.</span></em></p>
 */
var fingers;

function setup() {
  createCanvas(320, 240);
  // especifica múltples formatos para distintos navegadores
  fingers = createVideo(['assets/fingers.mov',
                         'assets/fingers.webm']);
  fingers.loop();
  fingers.hide();
  noStroke();
  fill(0);
}

function draw() {
  background(255);
  fingers.loadPixels();
  var stepSize = round(constrain(mouseX / 8, 6, 32));
  for (var y=0; y<height; y+=stepSize) {
    for (var x=0; x<width; x+=stepSize) {
      var i = y * width + x;
      var darkness = (255 - fingers.pixels[i*4]) / 255;
      var radius = stepSize * darkness;
      ellipse(x, y, radius, radius);
    }
  }
}
