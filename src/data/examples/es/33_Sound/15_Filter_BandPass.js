/**
 *  @name  Filtro pasabanda
 *  @description Aplica un filtro pasabanda (p5.BandPass) a ruido blanco.
 *  Visualiza el sonido con FFT.
 *  Mapea la posición horizontal del ratón (mouseX) a la frecuencia de pasabanda
 *  y la vertical (mouseY) a la razón resonancia/ancho del filtro pasabanda
 *
 * <br><br><em><span class="small"> Para correr localmente este ejemplo, necesitarás la
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">biblioteca p5.sound</a>
 * un archivo de audio y correr un <a href="https://github.com/processing/p5.js/wiki/Local-server">servidor local</a>.</span></em>
 */
let noise;
let fft;
let filter, filterFreq, filterWidth;

function setup() {
  createCanvas(710, 256);
  fill(255, 40, 255);

  filter = new p5.BandPass();

  noise = new p5.Noise();

  noise.disconnect(); // desconecta el archivo de sonido de la salida maestra
  filter.process(noise); // y conéctalo al filtro para solo escuchar el sonido filtrado por el filtro pasabanda
  noise.start();

  fft = new p5.FFT();
}

function draw() {
  background(30);

  // mapea la posición horizontal del ratón (mouseX) a una frecuencia de pasabanda dentro del rango del espectro FFT: 10Hz - 22050Hz
  filterFreq = map(mouseX, 0, width, 10, 22050);
  // mapea la posición vertical del ratón (mouseY) a la razón resonancia/ancho
  filterWidth = map(mouseY, 0, height, 0, 90);
  // definir los parámetros del filtor
  filter.set(filterFreq, filterWidth);

  // Dibuja cada valor en el análisis de espectro FFT donde
  // x = frecuencia más grave (10Hz) a más aguda (22050Hz),
  // h = energía / amplitud en esa frecuencia
  let spectrum = fft.analyze();
  noStroke();
  for (let i = 0; i < spectrum.length; i++) {
    let x = map(i, 0, spectrum.length, 0, width);
    let h = -height + map(spectrum[i], 0, 255, height, 0);
    rect(x, height, width / spectrum.length, h);
  }
}
