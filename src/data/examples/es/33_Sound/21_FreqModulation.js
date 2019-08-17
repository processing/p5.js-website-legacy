/**
 * @name Modulación en frecuencia
 * @description <p> La modulación en frecuencia (FM) es una poderosa forma de síntesis.
 * En su forma más simple , la FM involucra dos osciladores, referidos
 * como la portadora y la modulante. Mientras la onda modulante oscila
 * entre algún valor mínimo y maximo de amplitud, el valor momentáneo
 * es sumado a ("modula") la frecuencia de la portadora.</p>
 * <p>La <b>portadora</b> es típicamente definida para oscilar a una frecuencia audible
 * que percibimos como una altura — en este caso, es un oscilador sinusoidal a 220 Hz,
 * equivalenta a una nota "A3". La portadora es conectada a la salida maestra por defecto
 * (este es el caso para todos los objetos p5.Oscillator).</p>
 * <p>Nosotros <code>desconectaremos</code> la <b>modulante</b> de la salida maestra,
 * y la conectaremos a la frecuencia de la portadora:
 * <code>carrier.freq(modulator)</code>. Esto suma la amplitud de salida de la moduante
 * a la frecuencia de la portadora.</p>
 * <p>
 * La <b>profundida de modulación</b> describe cúanto será modulada la frecuencia de la portadora.
 * Está basada en la amplitud de la modulante.
 * La modulante produce un torrente continuo de valores de amplitud que sumaremos
 * a la frecuencia de la portadora. Una amplitud nula (0) significa silencio, así que la modulación no tendría efecto.
 * Una amplitud de 1.0 escala el rango de los valores de salida
 * entre +1.0 y -1.0. Este es el rango estándar de sonido que es enviado a tus parlantes,
 * pero en FM estamos enviando la salida de la modulante a la frecuencia de la portadora,
 * donde casi no notaríamosla modulación +1Hz / -1Hz.
 * Es por eso que típicamente aumentamos la amplitud (profundidad) de la modulante a números a muchos más altos
 * que los que enviaríamos a nuestros parlantes.</p>
 * <p>La <b>frecuencia de modulación</b> es la velocidad de la modulación. Cuando la frecuencia de modulación es menor a
 * 20Hz, dejamos de escuchar su frecuencia como una altura, y empezamos a escucharla como un ritmo pulsante.
 * Por ejemplo, prueba 7.5Hz a una profundidad de 20 para imitar el efecto "vibrato" de un vocalista de ópera.
 * El térmio par esto es un oscilador de baja frecuencia (LFO, Low Frequency Oscillator). Las modulantes configuradas a frecuencias más altas
 * pueden también producir efectos interesantes, especialmente cuando la frecuencia tiene una relación harmónica
 * con la señal portadora. Por ejemplo, escucha lo que sucede cuando la frecuencia modulante es
 * la mitad o el doble de la portadora. Esto es la base de la síntesis FM, desarrollada por John Chowning
 * en los años 1960s, lo que revolucionó la síntesis en los años 1980s y es a menudo utilizada para sintesizar sonidos de instrumentos metálicos de viento y campanas.
 *
 * <p>En este ejemplo,</p><p>
 * - la posición horizontal del ratón (mouseX) controla la profundidad de la modulación (la amplituda de la modulante) entre -150 y 150.
 * Cuando la amplitud de la modulante es anulada (0) en la mitad del lienzo, date cuenta cómo la modulación
 * no tiene efecto. A mayor (aplicando valor absoluto) el número, mayor el efecto.
 * Si la forma de onda de la modulante es simétrica como una onda cuadrada <code>[]</code>, sinusoidal <code>~</code>
 * o triangular <code>/\</code>, la amplitud negativa será la misma que la amplitud positiva.
 * Pero en este ejemplo, la modulante es una onda diente de sierra asimétrica, con una forma así /.
 * Cuando la multiplicamos por un número negativo, se invierte así \.
 * Para observar mejor la diferencia, baja la frecuencia.
 * </p>
 * <p>- La posición vertical del ratón (mouseY) controla la frecuencia de la modulante entre 0 y 112 Hz.
 * Prueba comparando frecuencias de modulación bajo el rango audible (que empieza en torno a los 20 Hz),
 * y sobre él, especialmente en relación armónica a la frecuencia de la portadora (que es de 220hz, así que
 * prueba con la mitad, 1/3, 1/4 etc...).
 *
 * <p><em><span class="small">Necesitarás incluir la
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">biblioteca p5.sound</a>
 * para que este ejemplo funcione en tu proyecto propio.</em></span></p>
 */

let carrier; // este es el oscilador que escucharemos, la portadora
let modulator; // este oscilador modulará la frecuencia de la portadora

let analyzer; // lo usaremos para visualizar la forma de onda

// la frecuencia de la portadora antes de ser modulada
let carrierBaseFreq = 220;

// rangos mínimo y máximo para la modulante
let modMaxFreq = 112;
let modMinFreq = 0;
let modMaxDepth = 150;
let modMinDepth = -150;

function setup() {
  let cnv = createCanvas(800, 400);
  noFill();

  carrier = new p5.Oscillator('sine');
  carrier.amp(0); // definir la amplitud
  carrier.freq(carrierBaseFreq); // definir la frecuencia
  carrier.start(); // empezar a oscilar

  // prueba a cambiar el tipo a 'square', 'sine' or 'triangle'
  modulator = new p5.Oscillator('sawtooth');
  modulator.start();

  // suma la salida de la modulante para modular la frecuencia de la portadora
  modulator.disconnect();
  carrier.freq(modulator);

  // crea una FFT para analizar el audio
  analyzer = new p5.FFT();

  // prende o apaga la portadora según si el ratón está sobre el botón de inicio o lo presiona
  toggleAudio(cnv);
}

function draw() {
  background(30);

  // mapea la posición vertical del ratón (mouseY) a la frecuencia modulante entre las frecuencias mínima y máxima
  let modFreq = map(mouseY, height, 0, modMinFreq, modMaxFreq);
  modulator.freq(modFreq);

  // cambia la amplitud de la modulante
  // la amplitud negativa pone en reversa la forma de onda diente de sierra, suena percusiva
  //
  let modDepth = map(mouseX, 0, width, modMinDepth, modMaxDepth);
  modulator.amp(modDepth);

  // analiza la forma de onda
  waveform = analyzer.waveform();

  // dibuja la forma de onda
  stroke(255);
  strokeWeight(10);
  beginShape();
  for (let i = 0; i < waveform.length; i++) {
    let x = map(i, 0, waveform.length, 0, width);
    let y = map(waveform[i], -1, 1, -height / 2, height / 2);
    vertex(x, y + height / 2);
  }
  endShape();

  strokeWeight(1);
  // añade una nota sobre lo que está pasando
  text('Frecuencia modulante: ' + modFreq.toFixed(3) + ' Hz', 20, 20);
  text(
    'Amplitud modulante (profundidad de modulación): ' + modDepth.toFixed(3),
    20,
    40
  );
  text(
    'Frecuencia portadora (antes de la modulación): ' + carrierBaseFreq + ' Hz',
    width / 2,
    20
  );
}

// función de ayuda para prender y apagar el sonido
function toggleAudio(cnv) {
  cnv.mouseOver(function() {
    carrier.amp(1.0, 0.01);
  });
  cnv.touchStarted(function() {
    carrier.amp(1.0, 0.01);
  });
  cnv.mouseOut(function() {
    carrier.amp(0.0, 1.0);
  });
}
