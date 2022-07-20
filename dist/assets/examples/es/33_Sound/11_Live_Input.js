/**
 * @name Entrada de micrófono
 * @description <p>Obtén una entrada de audio desde el micrófono de tu computador.
 * Haz ruido para hacer que la elipse flote.</p>
 * <p>Nota: p5.AudioIn contiene su propio objeto p5.Amplitude,
 * así que puedes llamar a getLevel() en p5.AudioIn() sin
 * crear un objeto p5.Amplitude().</p>
 * <br><br><em><span class="small"> Para correr localmente este ejemplo, necesitarás la
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">biblioteca p5.sound</a>
 * un archivo de audio y correr un <a href="https://github.com/processing/p5.js/wiki/Local-server">servidor local</a>.</span></em>
 */
let mic;

function setup() {
  createCanvas(710, 200);

  // crea una entrada de audio
  mic = new p5.AudioIn();

  // inicia la entrada de audio
  // por defecto, no la conecta (.connect()) a los parlantes del computador.
  mic.start();
}

function draw() {
  background(200);

  // obtén el volumen general (entre 0.0 y 1.0)
  let vol = mic.getLevel();
  fill(127);
  stroke(0);

  // dibuja una elipse con altura según el volumen
  let h = map(vol, 0, 1, height, 0);
  ellipse(width / 2, h - 25, 50, 50);
}
