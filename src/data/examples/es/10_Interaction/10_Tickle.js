/*
 * @name Cosquillas
 * @description La palabra "tickle" se mueve cuando el cursor está sobre ella.
 * A veces, puede ser incluso arrastrada fuera de la pantalla.
 */
let message = 'tickle',
  font,
  bounds, // almacena  la posición, ancho y alto de la caja contenedora del texto
  fontsize = 60,
  x,
  y; // coordenadas x e y del texto

function preload() {
  font = loadFont('assets/SourceSansPro-Regular.otf');
}

function setup() {
  createCanvas(710, 400);

  // definir la fuente del texto
  textFont(font);
  textSize(fontsize);

  // obtener ancho y alto del texto para centrarlo inicialmente
  bounds = font.textBounds(message, 0, 0, fontsize);
  x = width / 2 - bounds.w / 2;
  y = height / 2 - bounds.h / 2;
}

function draw() {
  background(204, 120);

  // escribir el texto con negro y obtener su caja contenedora
  fill(0);
  text(message, x, y);
  bounds = font.textBounds(message, x, y, fontsize);

  // revisar si el ratón está dentro de la caja contenedora y moverse si es así
  if (
    mouseX >= bounds.x &&
    mouseX <= bounds.x + bounds.w &&
    mouseY >= bounds.y &&
    mouseY <= bounds.y + bounds.h
  ) {
    x += random(-5, 5);
    y += random(-5, 5);
  }
}
