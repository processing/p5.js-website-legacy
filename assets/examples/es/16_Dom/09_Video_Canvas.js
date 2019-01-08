/*
 * @name Lienzo y video
 * @description <p> Cargar un video en múltiples formatos y dibújalo en el lienzo.</p>
 * <p><em><span class="small"> Para correr este ejemplo localmente, necesitarás la
 * <a href="http://p5js.org/reference/#/libraries/p5.dom">biblioteca p5.dom</a>
 *, al menos un archivo de video y correr un <a href="https://github.com/processing/p5.js/wiki/Local-server">servidor local</a>.</span></em></p>
 */
var fingers;

function setup() {
  createCanvas(710, 400);
  // especificar múltiples formatos para diferentes navegadores
  fingers = createVideo(['assets/fingers.mov',
                         'assets/fingers.webm']);
  fingers.hide(); // por defecto el video aparece en un elemento dom separado.
                  // escóndelo y dibújalo en el lienzo en vez de eso.
}

function draw() {
  background(150);
  image(fingers,10,10); // dibuja el cuadro del video en el lienzo.
  filter('GRAY');
  image(fingers,150,150); // dibuja una segunda copia en el lienzo.
}

function mousePressed() {
  fingers.loop(); // configurar el video para empezar a reproducirse en bucle
}
