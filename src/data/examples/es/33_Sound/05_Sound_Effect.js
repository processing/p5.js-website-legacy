/*
 * @name Efecto de sonido
 * @description <p>Reproduce un efecto de sonido cuando el ratón hace click dentro del círculo.</p>
 * <br><br><em><span class="small"> Para correr localmente este ejemplo, necesitarás la
 * <a href="http://p5js.org/reference/#/libraries/p5.sound">biblioteca p5.sound</a>
 * un archivo de audio y correr un <a href="https://github.com/processing/p5.js/wiki/Local-server">servidor local</a>.</span></em>
 */
// Adaptado de "Learning Processing" de Daniel Shiffman
// http://www.learningprocessing.com
// Sample de timbre por Corsica_S via freesound.org,
// Creative Commons BY 3.0

// una clase para describir un "timbre" (realmente un botón)
class Doorbell {
  constructor(x_, y_, r_) {
    // posición y tamaño
    this.x = x_;
    this.y = y_;
    this.r = r_;
  }

  // ¿hay un punto dentro del timbre?(usado para "rollover" del ratón)
  contains(mx, my) {
    return dist(mx, my, this.x, this.y) < this.r;
  }

  // muestra el timbre (colores arbitrarios, podría ser mejorado)
  display(mx, my) {
    if (this.contains(mx, my)) {
      fill(100);
    } else {
      fill(175);
    }
    stroke(0);
    strokeWeight(4);
    ellipseMode(RADIUS);
    ellipse(this.x, this.y, this.r, this.r);
  }
}

// Un objeto archivo de sonido
let dingdong;

// un objeto timbre (doorbell), que gatillará el sonido
let doorbell;

function setup() {
  createCanvas(200, 200);

  // cargar el archivo de sonido
  // hemos incluido versiones MP3 y OGG.
  soundFormats('mp3', 'ogg');
  dingdong = loadSound('assets/doorbell.mp3');

  // crear un nuevo timbre
  doorbell = new Doorbell(width / 2, height / 2, 32);
}

function draw() {
  background(255);
  // muestra el timbre
  doorbell.display(mouseX, mouseY);
}

function mousePressed() {
  // si el usuario hace click en el timbre, reproduce el sonido
  if (doorbell.contains(mouseX, mouseY)) {
    dingdong.play();
  }
}
