/**
 *  @name  Reverb
 *  @description El reverb le da profundidad y sensación de espacio a un sonido. Aquí,
 *  estamos procesando ruido con reverb.
 *
 * <br><br><em><span class="small"> Para correr localmente este ejemplo, necesitarás la
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">biblioteca p5.sound</a>
 * un archivo de audio y correr un <a href="https://github.com/processing/p5.js/wiki/Local-server">servidor local</a>.</span></em>
 */

let sound, reverb;

function preload() {
  soundFormats('mp3', 'ogg');
  soundFile = loadSound('assets/Damscray_DancingTiger');

  // desconectar la conexión por defecto
  // para solor escuchar el sonido a través de reverb.process()
  soundFile.disconnect();
}

function setup() {
  createCanvas(720, 100);
  background(0);

  reverb = new p5.Reverb();

  // conectar el archivo de audio al reverb, con un
  // tiempo de reverb de 6 segundos, y una tasa de decaimiento de 0.2%
  reverb.process(soundFile, 6, 0.2);

  reverb.amp(4); // ¡súbele el volumen!
}

function mousePressed() {
  soundFile.play();
}
