/**
 *  @name Formatos de sonido
 *  @description <p>Técnicamente, por problemas de patente, no existe un único
 *  formato de sonido que sea soportado por todos los navegadores web. Mientras que el
 *  <a href="http://caniuse.com/#feat=mp3">mp3 es soportado</a> a lo largo de las
 *  últimas versiones de los más populares navegadores en OS X y Windows, por ejemplo,
 *  puede no estar disponible en algunos sistemas operativos o navegadmores menos comunes.</p>
 *
 *  <p>Para asegurarse de tener total compatibilidad, puedes incluir el mismo archivo de sonido
 *  en múltiples formatos, por ejemplo 'sound.mp3' y 'sound.ogg'. (Ogg es  una
 *  alternativa al mp3 de código abierto.) Puedes convertir archivos de audio
 *  en formatos amigables con la web de forma gratuita en <a href="http://media.io/">media.io</a></p>.
 *
 *  <p>El método soundFormats() le dice a loadSound() cuáles formatos
 *  hemos incluido en nuestro bosquejo. Entonces, loadSound()
 *  tratará de cargar el primer formato que sea soportado por
 *  el navegador web del cliente.</p>
 *
 * <br><br><em><span class="small"> Para correr localmente este ejemplo, necesitarás la
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">biblioteca p5.sound</a>
 * un archivo de audio y correr un <a href="https://github.com/processing/p5.js/wiki/Local-server">servidor local</a>.</span></em>
 */

let song;

function preload() {
  // hemos incluido un archivo .ogg y otro .mp3
  soundFormats('ogg', 'mp3');

  // si mp3 no es soportado por este navegador,
  // loadSound() cargará el archivo ogg
  // que hemos incluido con nuestro bosquejo
  song = loadSound('assets/lucky_dragons_-_power_melody.mp3');
}

function setup() {
  createCanvas(710, 200);

  // canción cargada durante preload(), lista para ser reproducida durante setup()
  song.play();
  background(0, 255, 0);
}

function mousePressed() {
  if (song.isPlaying()) {
    // .isPlaying() retorna una variable booleana
    song.pause();
    background(255, 0, 0);
  } else {
    song.play(); // la reproducción continuará desde el instante en que fue pausado.
    background(0, 255, 0);
  }
}
