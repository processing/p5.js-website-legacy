/**
 * @name  Midiendo la amplitud
 * @description <p>Analiza la amplitud del sonido con
 * p5.Amplitude.</p>
 *
 *  <p>La <b>amplitud</b> es la magnitud de la vibración. El sonido es vibración,
 *  así que la amplitiud se relaciona fuertemente al volumen (loudness).</p>
 *
 * <p>El método<code>getLevel()</code> toma un arreglo de valores de amplitud
 * almacenados en un pequeño periodo de tiempo(1024 samples).
 * Retorna el <b>Root Mean Square (RMS)</b> de estos valores.</p>
 *
 * <p>Los valores originales de amplitud para audio digital están entre -1.0 y 1.0.
 * No obstante, el valor RMS siempre será positivo, porque está elevado al cuadrado.
 * Además, en vez de usar lecturas de amplitud instantáneas que son sampleadas a una tasa de
 * 44,100 veces por segundo, RMS es un promedio en el tiempo (1024 samples, en este caso),
 * lo que representa de mejor manera cómo nosotros escuchamos la amplitud.
 * </p>
 * <br><br><em><span class="small"> Para correr localmente este ejemplo, necesitarás la
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">biblioteca p5.sound</a>
 * un archivo de audio y correr un <a href="https://github.com/processing/p5.js/wiki/Local-server">servidor local</a>.</span></em>
 */
let song, analyzer;

function preload() {
  song = loadSound('assets/lucky_dragons_-_power_melody.mp3');
}

function setup() {
  createCanvas(710, 200);
  song.loop();

  // crea un nuevo analizador de amplitud
  analyzer = new p5.Amplitude();

  // Conecta la entrada al analizador de amplitud
  analyzer.setInput(song);
}

function draw() {
  background(255);

  // Obtén la amplitud RMS (root mean square)
  let rms = analyzer.getLevel();
  fill(127);
  stroke(0);

  // Dibuja una elipse con su tamaño proporcional al volumen
  ellipse(width / 2, height / 2, 10 + rms * 200, 10 + rms * 200);
}
