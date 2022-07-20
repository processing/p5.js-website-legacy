/*
 * @name Frecuencia de oscilador
 * @description <p>Controla un oscilador y observa la forma de onda usando FFT.
 * La posición horizontal del ratón (mouseX) es mapeada a la frecuencia, y la vertical (mouseY) a la amplitud.</p>
 * <br><br><em><span class="small"> Para correr localmente este ejemplo, necesitarás la
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">biblioteca p5.sound</a>
 * y un archivo de audio.</span></em>
 */
let osc, fft;

function setup() {
  createCanvas(720, 256);

  osc = new p5.TriOsc(); // definir frecuencia y tipo
  osc.amp(0.5);

  fft = new p5.FFT();
  osc.start();
}

function draw() {
  background(255);

  let waveform = fft.waveform(); // analiza la forma de onda
  beginShape();
  strokeWeight(5);
  for (let i = 0; i < waveform.length; i++) {
    let x = map(i, 0, waveform.length, 0, width);
    let y = map(waveform[i], -1, 1, height, 0);
    vertex(x, y);
  }
  endShape();

  // cambia la frecuencia del oscilador según mouseX
  let freq = map(mouseX, 0, width, 40, 880);
  osc.freq(freq);

  // cambia la amplitud del oscilador según mouseY
  let amp = map(mouseY, 0, height, 1, 0.01);
  osc.amp(amp);
}
