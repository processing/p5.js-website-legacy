/*
 * @name Frecuencia de oscilador
 * @description <p>Controla un oscilador y observa la forma de onda usando FFT.
 * La posición horizontal del ratón (mouseX) es mapeada a la frecuencia, y la vertical (mouseY) a la amplitud.</p>
 * <br><br><em><span class="small"> Para correr localmente este ejemplo, necesitarás la
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">biblioteca p5.sound</a>
 * y un archivo de audio.</span></em>
 */
var osc, fft;

function setup() {
  createCanvas(720, 256);

  osc = new p5.TriOsc(); // definir frecuencia y tipo
  osc.amp(.5);

  fft = new p5.FFT();
  osc.start();
}

function draw() {
  background(255);

  var waveform = fft.waveform();  // analiza la forma de onda
  beginShape();
  strokeWeight(5);
  for (var i = 0; i < waveform.length; i++){
    var x = map(i, 0, waveform.length, 0, width);
    var y = map(waveform[i], -1, 1, height, 0);
    vertex(x, y);
  }
  endShape();

  // cambia la frecuencia del oscilador según mouseX
  var freq = map(mouseX, 0, width, 40, 880);
  osc.freq(freq);

  // cambia la amplitud del oscilador según mouseY
  var amp = map(mouseY, 0, height, 1, .01);
  osc.amp(amp);
}
