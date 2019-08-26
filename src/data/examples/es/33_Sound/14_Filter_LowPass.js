/**
 *  @name  Filtro pasabajos
 *  @description Aplica un filtro pasabajos (p5.LowPass) a un archivo de audio (p5.SoundFile).
 *  Visualiza el sonido con FFT.
 *  Mapea la posición horizontal del ratón (mouseX) a la frecuencia de corte del filtro
 *  y la vertical (mouseY) a la razón resonancia/ancho de un filtro pasabanda.
 *
 * <br><br><em><span class="small"> Para correr localmente este ejemplo, necesitarás la
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">biblioteca p5.sound</a>
 * un archivo de audio y correr un <a href="https://github.com/processing/p5.js/wiki/Local-server">servidor local</a>.</span></em>
 */
let soundFile;
let fft;

let filter, filterFreq, filterRes;

function preload() {
  soundFormats('mp3', 'ogg');
  soundFile = loadSound('assets/beat');
}

function setup() {
  createCanvas(710, 256);
  fill(255, 40, 255);

  // reproduce el archivo de sonido en bucle
  soundFile.loop();

  filter = new p5.LowPass();

  // desconecta el archivo de audio de la salida maestra.
  // luego, conéctalo al filtro, para que solo escuchemos el sonido filtrado
  soundFile.disconnect();
  soundFile.connect(filter);

  fft = new p5.FFT();
}

function draw() {
  background(30);

  // Mapea la posición horizontal del ratón (mouseX) a la frecuencia de corte desde
  // la frecuencia más grave (10Hz) a la más aguda (22050Hz) que los humanos escuchan
  filterFreq = map(mouseX, 0, width, 10, 22050);

  // Mapea la posición vertical del ratón (mouseY) a la resonancia (aumento de volumen) en la frecuencia de corte
  filterRes = map(mouseY, 0, height, 15, 5);

  // define los parámetros del filtro
  filter.set(filterFreq, filterRes);

  // dibuja cada lugar en el análisis de espectro FFT donde
  // x = frecuencia más grave (10Hz) a la más aguda (22050Hz),
  // h = energía (amplitud / volumen) en esa frecuencia
  let spectrum = fft.analyze();
  noStroke();
  for (let i = 0; i < spectrum.length; i++) {
    let x = map(i, 0, spectrum.length, 0, width);
    let h = -height + map(spectrum[i], 0, 255, height, 0);
    rect(x, height, width / spectrum.length, h);
  }
}
