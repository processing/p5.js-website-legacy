/**
 * @name  Graba y almacena audio
 * @description Graba un sonido, reprodúcelo y almacénalo como
 * un archivo .wav file en el computador cliente.
 * Necesitamos tres objetos: un p5.AudioIn (micrófono / fuente de sonido),
 * p5.SoundRecorder (graba el sonido), y un
 * p5.SoundFile (reproduce / almacena).
 * <br><br><em><span class="small"> Para correr localmente este ejemplo, necesitarás la
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">biblioteca p5.sound</a>
 * un archivo de audio y correr un <a href="https://github.com/processing/p5.js/wiki/Local-server">servidor local</a>.</span></em>
 */
let mic, recorder, soundFile;

let state = 0; // presionar el ratón cambiará el estado de grabar, a parar y a reproducir

function setup() {
  createCanvas(400, 400);
  background(200);
  fill(0);
  text('Enable mic and click the mouse to begin recording', 20, 20);

  // crear una entrada de audio
  mic = new p5.AudioIn();

  // los usuarios deben manualmente permitir en su navegador que el micrófono funcione para que la grabación funcione de manera correcta
  mic.start();

  // crear un nuevo grabador de sonido
  recorder = new p5.SoundRecorder();

  // conectar el micrófono al grabador
  recorder.setInput(mic);

  // crear un archivo de audio vacío que será usado para la reproducción de la grabación
  soundFile = new p5.SoundFile();
}

function mousePressed() {
  // usar el booleano '.enabled' (permitido) para asegurarse que el micrófono haya sido habilitado por el usuario (si no grabaríamos silencio)
  if (state === 0 && mic.enabled) {
    // indicar al grabador que grabe en el objeto p5.SoundFile, que usaremos para la reproducción
    recorder.record(soundFile);

    background(255, 0, 0);
    text('Recording now! Click to stop.', 20, 20);
    state++;
  } else if (state === 1) {
    recorder.stop(); // parar el grabador, y enviar el resultado al archivo de audio soundFile

    background(0, 255, 0);
    text('Recording stopped. Click to play & save', 20, 20);
    state++;
  } else if (state === 2) {
    soundFile.play(); // reproduce el sonido
    saveSound(soundFile, 'mySound.wav'); // almacena el archivo
    state++;
  }
}
