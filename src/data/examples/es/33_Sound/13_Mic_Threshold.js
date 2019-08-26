/**
 * @name Umbral de micrófono
 * @description <p>Gatilla un evento (dibujar un rectángulo) cuando el volumen de la entrada
 * de audio sobrepasa un umbral.</p>
 * <br><br><em><span class="small"> Para correr localmente este ejemplo, necesitarás la
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">biblioteca p5.sound</a>
 * un archivo de audio y correr un <a href="https://github.com/processing/p5.js/wiki/Local-server">servidor local</a>.</span></em>
 */
// Adaptado de "Learning Processing" por Daniel Shiffman
// learningprocessing.com
let input;
let analyzer;

function setup() {
  createCanvas(710, 200);
  background(255);

  // crea una entrada de audio
  input = new p5.AudioIn();

  input.start();
}

function draw() {
  // obtén el volumen general (entre 0.0 y 1.0)
  let volume = input.getLevel();

  // si volume > 0.1,  se dibuja un rectángulo en una posición aleatoria.
  // a mayor volumen, más grande el rectángulo.
  let threshold = 0.1;
  if (volume > threshold) {
    stroke(0);
    fill(0, 100);
    rect(random(40, width), random(height), volume * 50, volume * 50);
  }

  // grafica el volumen potencial general, con una línea en el umbral
  let y = map(volume, 0, 1, height, 0);
  let ythreshold = map(threshold, 0, 1, height, 0);

  noStroke();
  fill(175);
  rect(0, 0, 20, height);
  // luego dibuja un rectángulo en el gráfico, con su tamaño acorde al volumen
  fill(0);
  rect(0, y, 20, y);
  stroke(0);
  line(0, ythreshold, 19, ythreshold);
}
