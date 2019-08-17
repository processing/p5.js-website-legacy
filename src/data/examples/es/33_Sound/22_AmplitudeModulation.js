/**
 * @name Modulación en amplitud
 * @description <p>La modulación en amplitud involucra dos osciladores, referidos como
 * la portadora (carrier) y la modulante, donde la modulante controla la amplitud de la portadora.</p>
 *
 * <p>La portadora es típicamente definida a una frecuencia audible (por ejemplo, 440 Hz)
 * y conectada a la salida maestra por defecto. La amplitud de la portadora (carrier.amp) es anulada (0)
 * porque así la modulante tiene total control sobre su amplitud.</p>
 *
 * <p>La modulante es desconectada de la salida maestra. En vez de eso, es conectada
 * a la amplitud de la portadora, así: carrier.amp(modulator).</p>
 *
 * <p>En este ejemplo:</p>
 * <p>- la posición horizontal del ratón (mouseX) contrla la amplitud de la modulante
 * entre 0 y 1. Cuando la amplitud modulante es hecha 0, la
 * modulación en amplitud no hace efecto.</p>
 *
 * <p>- La posición vertical del ratón (mouseY) controla la frecuencia de la modulante entre 0 y 20 Hz.
 * Este rango es más grave que las frecuencias que los humanos pueden escuchar, y percibimos la
 * modulación como un ritmo. Este rango simula un efecto conocido como tremolo.
 * La modulación en anillo (ring modulation) es un tipo de modulación en amplitud donde la
 * señal portadora original no está presente, y a menudo involucra modulación a una mayor
 * frecuencia. </p>
 *
 * <p><em><span class="small">Necesitarás incluir la
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">biblioteca p5.sound</a>
 * para que este ejemplo funcione en tu proyecto propio.</em></span></p>
 */

let carrier; // este es el oscilador que escucharemos
let modulator; // este oscilador modulará la amplitud de la portadora
let fft; // visualizaremos la forma de onda

function setup() {
  createCanvas(800, 400);
  noFill();
  background(30); // alpha

  carrier = new p5.Oscillator(); // se conecta la salida a la salida maestra por defecto
  carrier.freq(340);
  carrier.amp(0);
  // la amplitud de la portadora es 0 por defecto, dándole así a a la modulante control total

  carrier.start();

  modulator = new p5.Oscillator('triangle');
  modulator.disconnect(); // desconecta la moduladora de la salida maestra
  modulator.freq(5);
  modulator.amp(1);
  modulator.start();

  // modula la ampltiud de la portadora con la modulante
  // opcionalmente, podemos escalar la señal
  carrier.amp(modulator.scale(-1, 1, 1, -1));

  // crea una FFT para analizar el audio
  fft = new p5.FFT();
}

function draw() {
  background(30, 30, 30, 100); // alpha

  // mapea la posición vertical del ratón (mouseY) a la frecuencia de la modulante entre 0 y 20 Hz
  let modFreq = map(mouseY, 0, height, 20, 0);
  modulator.freq(modFreq);

  let modAmp = map(mouseX, 0, width, 0, 1);
  modulator.amp(modAmp, 0.01); // tiempo de transición de 0.1 para mayor suavidad

  // analiza la forma de onda
  waveform = fft.waveform();

  // dibuja la forma de onda
  drawWaveform();

  drawText(modFreq, modAmp);
}

function drawWaveform() {
  stroke(240);
  strokeWeight(4);
  beginShape();
  for (let i = 0; i < waveform.length; i++) {
    let x = map(i, 0, waveform.length, 0, width);
    let y = map(waveform[i], -1, 1, -height / 2, height / 2);
    vertex(x, y + height / 2);
  }
  endShape();
}

function drawText(modFreq, modAmp) {
  strokeWeight(1);
  text('Modulator Frequency: ' + modFreq.toFixed(3) + ' Hz', 20, 20);
  text('Modulator Amplitude: ' + modAmp.toFixed(3), 20, 40);
}
