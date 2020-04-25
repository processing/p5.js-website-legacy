/*
 * @name Modificar el DOM
 * @frame 710,300
 * @description Crea elementos DOM y modifica sus propiedades cada vez que draw() es llamado
 */
let dancingWords = [];

class DanceSpan {
  constructor(element, x, y) {
    element.position(x, y);
    this.element = element;
    this.x = x;
    this.y = y;
  }

  brownian() {
    this.x += random(-6, 6);
    this.y += random(-6, 6);
    this.element.position(this.x, this.y);
  }
}

function setup() {
  // Este párrafo es creado aparte del bloque principal de código.
  // Es para diferenciar entre la creación de un elemento y su selección.
  // Los elementos seleccionados no necesitan ser creados por p5js, pueden ser HTML plano.
  createP(
    'I learn in this Letter, that Don Peter of Arragon, ' +
      ' comes this night to Messina'
  ).addClass('text').hide();

  // Esta línea toma el párrafo recién creado, pero podría también
  // tomar otros elementos de la clase 'text' en la página HTML.
  const texts = selectAll('.text');

  for (let i = 0; i < texts.length; i++) {
    const paragraph = texts[i].html();
    const words = paragraph.split(' ');
    for (let j = 0; j < words.length; j++) {
      const spannedWord = createSpan(words[j]);
      const dw = new DanceSpan(spannedWord, random(600), random(200));
      dancingWords.push(dw);
    }
  }
}

function draw() {
  for (let i = 0; i < dancingWords.length; i++) {
    dancingWords[i].brownian();
  }
}
