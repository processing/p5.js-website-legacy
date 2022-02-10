/**
 *  @name  Envolvente de nota
 *  @description  <p>Una envolvente es una serie de fundidos, definidos como
 *  pares tiempo/valor. En este ejemplo, la envolvente
 *  será usada para "tocar" una nota al controlar la
 *  amplitud de salida de un oscilador.<br/><br/>
 *  El objeto p5.Oscillator() envía su señal de salida a través de
 *  un nodo de ganancia (GainNode) de tipo Web Audio interno (p5.Oscillator.output).
 *  Por defecto, ese nodo tiene un valor constante de 0.5.
 *  Puede ser redefinido con el método osc.amp(). O, como en este ejemplo, con una
 *  envolvente que toma control de ese nodo, subiendo y bajando
 *   la amplitud como una perilla de volumen.</p>
 * <br><br><em><span class="small"> Para correr localmente este ejemplo, necesitarás la
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">biblioteca p5.sound</a>
 * y un archivo de audio.</span></em>
 */
let osc, envelope, fft;

let scaleArray = [60, 62, 64, 65, 67, 69, 71, 72];
let note = 0;

function setup() {
  createCanvas(710, 200);
  osc = new p5.SinOsc();

  // instanciar la envolvente
  envelope = new p5.Env();

  // definir el tiempo de ataque, de decaimiento, la razón de "sustain" y el tiempo de "release"
  envelope.setADSR(0.001, 0.5, 0.1, 0.5);

  // definir el nivel de ataque y de "release"
  envelope.setRange(1, 0);

  osc.start();

  fft = new p5.FFT();
  noStroke();
}

function draw() {
  background(20);

  if (frameCount % 60 === 0 || frameCount === 1) {
    let midiValue = scaleArray[note];
    let freqValue = midiToFreq(midiValue);
    osc.freq(freqValue);

    envelope.play(osc, 0, 0.1);
    note = (note + 1) % scaleArray.length;
  }

  // graficar el análisis de frecuencia de FFT.analyze() en el lienzo
  let spectrum = fft.analyze();
  for (let i = 0; i < spectrum.length / 20; i++) {
    fill(spectrum[i], spectrum[i] / 10, 0);
    let x = map(i, 0, spectrum.length / 20, 0, width);
    let h = map(spectrum[i], 0, 255, 0, height);
    rect(x, height, spectrum.length / 20, -h);
  }
}
