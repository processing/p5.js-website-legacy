/**
 *  @name  Delay
 *  @description
 *  Haz click para escuchar cómo el objeto (p5.Delay) procesa un archivo de audio.
 *  La posición horizontal del ratón (mouseX) controla la frecuencia de filtrado del objeto p5.Delay.
 *  La posición vertical del ratón (mouseY) controla tanto el tiempo de retraso como la resonancia del objeto p5.Delay.
 *  Visualiza el volumen resultante del sonido con un objeto Amplitude.
 *
 * <br><br><em><span class="small"> Para correr localmente este ejemplo, necesitarás la
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">biblioteca p5.sound</a>
 * un archivo de audio y correr un <a href="https://github.com/processing/p5.js/wiki/Local-server">servidor local</a>.</span></em>
 */

let soundFile, analyzer, delay;

function preload() {
  soundFormats('ogg', 'mp3');
  soundFile = loadSound('assets/beatbox.mp3');
}

function setup() {
  createCanvas(710, 400);

  soundFile.disconnect(); // para que solo escuchemos el delay

  delay = new p5.Delay();
  delay.process(soundFile, 0.12, 0.7, 2300);
  delay.setType('pingPong'); // un tipo de efecto stereo

  analyzer = new p5.Amplitude();
}

function draw() {
  background(0);

  // obtener una lectura de volumen del analizador p5.Amplitude
  let level = analyzer.getLevel();

  // usar el nivel para dibujar un rectángulo verde
  let levelHeight = map(level, 0, 0.1, 0, height);
  fill(100, 250, 100);
  rect(0, height, width, -levelHeight);

  let filterFreq = map(mouseX, 0, width, 60, 15000);
  filterFreq = constrain(filterFreq, 60, 15000);
  let filterRes = map(mouseY, 0, height, 3, 0.01);
  filterRes = constrain(filterRes, 0.01, 3);
  delay.filter(filterFreq, filterRes);
  let delTime = map(mouseY, 0, width, 0.2, 0.01);
  delTime = constrain(delTime, 0.01, 0.2);
  delay.delayTime(delTime);
}

function mousePressed() {
  soundFile.play();
}
