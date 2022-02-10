/**
 *  @name Tambor con envolvente y ruido
 *  @description  <p>El ruido blanco es una señal de audio aleatoria con igual energía
 *  en cada parte del espectro de frecuencia</p>
 *
 *  <p>Una envolvente es una serie de fundidos, definidos como pares de tiempo/valor.</p>
 *
 *  <p>En este ejemplo, el objeto p5.Env
 *  será usado para "tocar" el objeto p5.Noise como un tambor, por medio de controlar su amplitud de salida.
 *  Un objeto p5.Amplitude nos dará el nivel de todo el sonido en el bosquejo, y
 *  usaremos este valor para dibujar un rectángulo verde que muestra la envolvente en acción</p>
 * <br><br><em><span class="small"> Para correr localmente este ejemplo, necesitarás la
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">biblioteca p5.sound</a>
 * y un archivo de audio.</span></em>
 */
let noise, env, analyzer;

function setup() {
  createCanvas(710, 200);
  noise = new p5.Noise(); // otros tipos incluyen ruido café (brown) y rosado (pink)
  noise.start();

  // multiplica el volumen del ruido por 0
  // (¡mantenlo callado hasta que estemos listos para hacer ruido!)
  noise.amp(0);

  env = new p5.Env();
  // define el tiempo de ataque, el tiempo de decaimiento, la razón de "sustain" y el tiempo de "release"
  env.setADSR(0.001, 0.1, 0.2, 0.1);
  // configurar el nivel de ataque y de "release"
  env.setRange(1, 0);

  // El objeto p5.Amplitude() analizará todo el sonido en el bosquejo
  // a menos que el métodosetInput() sea usado para especificar la señal de entrada
  analyzer = new p5.Amplitude();
}

function draw() {
  background(0);

  // obtener lectura de volumen del analizador p5.Amplitude
  let level = analyzer.getLevel();

  // usar el nivel para dibujar un rectángulo verde
  let levelHeight = map(level, 0, 0.4, 0, height);
  fill(100, 250, 100);
  rect(0, height, width, -levelHeight);
}

function mousePressed() {
  env.play(noise);
}
