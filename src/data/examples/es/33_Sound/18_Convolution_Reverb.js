/**
 * @name  Reverb de convolución
 * @description <p> El objeto p5.Convolver puede recrear el sonido de un espacio
 * real usando convolución. La convolución toma una respuesta al impulso,
 * (el sonido de un espacio reverberando), y usa eso para recrear el sonido en ese espacio
 *</p><p> Haz click para reproducir el sonido convolucionado
 * Cada vez que haces click, el sonido es convolucionado con
 * una respuesta al impulso diferente. Para escuchar la respuesta al impulso, presiona cualquier tecla.</p>
 *
 * <br><br><em><span class="small"> Para correr localmente este ejemplo, necesitarás la
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">biblioteca p5.sound</a>
 * un archivo de audio y correr un <a href="https://github.com/processing/p5.js/wiki/Local-server">servidor local</a>.</span></em>
 * Estos samples de convolución son Creative Commons BY
 * <a href="https://www.freesound.org/people/recordinghopkins/">
 * recordinghopkins</a></em></span></p>
 */
let sound, env, cVerb, fft;
let currentIR = 0;
let rawImpulse;

function preload() {
  // hemos incluido versiones MP3 y OGG de todos los impulsos y sonidos
  soundFormats('ogg', 'mp3');

  // crear un objeto p5.Convolver
  cVerb = createConvolver('assets/bx-spring');

  // añadir respuestas al impulso al arreglo cVerb.impulses, además del ya agregado bx-spring
  cVerb.addImpulse('assets/small-plate');
  cVerb.addImpulse('assets/drum');
  cVerb.addImpulse('assets/beatbox');
  cVerb.addImpulse('assets/concrete-tunnel');

  // cargar un sonido que será procesado por el objeto p5.ConvultionReverb
  sound = loadSound('assets/Damscray_DancingTiger');
}

function setup() {
  createCanvas(710, 400);
  rawImpulse = loadSound('assets/' + cVerb.impulses[currentIR].name);

  // desconectar de la salida maestra
  sound.disconnect();
  // y procesarlo con cVerb
  // para que solo escuchemos el reverb
  cVerb.process(sound);

  fft = new p5.FFT();
}

function draw() {
  background(30);
  fill(0, 255, 40);

  let spectrum = fft.analyze();

  // dibuja cada valor en el arreglo de espectro de frecuencia como un rectángulo
  noStroke();
  for (let i = 0; i < spectrum.length; i++) {
    let x = map(i, 0, spectrum.length, 0, width);
    let h = -height + map(spectrum[i], 0, 255, height, 0);
    rect(x, height, width / spectrum.length, h);
  }
}

function mousePressed() {
  // recorre el arreglo cVerb.impulses
  currentIR++;
  if (currentIR >= cVerb.impulses.length) {
    currentIR = 0;
  }
  cVerb.toggleImpulse(currentIR);

  // reproduce el sonido a través del impulso
  sound.play();

  // muestra en pantalla el nombre de la respuesta al impulso actual (el nombre del archivo)
  println('Convolution Impulse Response: ' + cVerb.impulses[currentIR].name);

  rawImpulse.setPath('assets/' + cVerb.impulses[currentIR].name);
}

// reproduce el impulso (sin convolución)
function keyPressed() {
  rawImpulse.play();
}
