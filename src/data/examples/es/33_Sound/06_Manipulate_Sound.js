/*
 * @name Tasa de reproducción
 * @description <p>Cargar un archivo de sonido y mapear su tasa de reproducción a la posición y del ratón
 * y el volumen a la posición x, mouseY y mouseX respectivamente.
 * La tasa de reproducción es la velocidad con que
 * el contexto web de audio procesa la información del archivo de sonido.
 * Tasas más bajas no solo prolongan la duración del sonido, sino que también
 * disminuyen la altura (pitch) porque la reproducción es realizada a menor frecuencia.</p>
 * <br><br><em><span class="small"> Para correr localmente este ejemplo, necesitarás la
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">biblioteca p5.sound</a>
 * un archivo de audio y correr un <a href="https://github.com/processing/p5.js/wiki/Local-server">servidor local</a>.</span></em>
 */
// un objeto de archivo de sonido
let song;

function preload() {
  // cargar un archivo de sonido
  song = loadSound('assets/Damscray_DancingTiger.mp3');
}

function setup() {
  createCanvas(710, 400);

  // repite el sonido en bucle por siempre
  // (bueno, al menos hasta que se llame a stop())
  song.loop();
}

function draw() {
  background(200);

  // definir el volumen a un rango entre 0 y 1.0
  let volume = map(mouseX, 0, width, 0, 1);
  volume = constrain(volume, 0, 1);
  song.amp(volume);

  // define la tasa a un rango entre 0.1 y 4
  // cambiar la tasa altera la altura del sonido (pitch)
  let speed = map(mouseY, 0.1, height, 0, 2);
  speed = constrain(speed, 0.01, 4);
  song.rate(speed);

  // dibuja algunas círculos para mostrar lo que está pasando
  stroke(0);
  fill(51, 100);
  ellipse(mouseX, 100, 48, 48);
  stroke(0);
  fill(51, 100);
  ellipse(100, mouseY, 48, 48);
}
