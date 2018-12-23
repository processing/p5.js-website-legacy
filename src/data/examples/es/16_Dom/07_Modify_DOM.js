/*
 * @name Modificar el DOM
 * @frame 710,300
 * @description <p>Crea elementos DOM y modifica sus propiedades cada vez que draw() es llamado
 * Necesitarás incluir la
 * <a href="http://p5js.org/reference/#/libraries/p5.dom">biblioteca p5.dom</a>
 * para que este ejemplo funcione en tu proyecto. </p>
 */
let dancingWords = [];

class DanceSpan {
  constructor(element, x, y) {
    element.position(x, y);
  }

  brownian() {
    x += random(-6, 6);
    y += random(-6, 6);
    element.position(x, y);
  }
}

function setup() {
  // Este párrafo es creado aparte del bloque principal de código.
  // Es para diferenciar entre la creación de un elemento y su selección.
  // Los elementos seleccionados no necesitan ser creados por p5js, pueden ser HTML plano.
  createP(
    'I learne in this Letter, that Don Peter of Arragon, ' +
      ' comes this night to Messina'
  ).addClass('text');

  // Esta línea toma el párrafo recién creado, pero podría también
  // tomar otros elementos de la clase 'text' en la página HTML.
  let texts = selectAll('.text');

  for (let i = 0; i < texts.length; i++) {
    let paragraph = texts[i].html();
    let words = paragraph.split(' ');
    for (let j = 0; j < words.length; j++) {
      let spannedWord = createSpan(words[j]);
      let dw = new DanceSpan(spannedWord, random(600), random(200));
      dancingWords.push(dw);
    }
  }
}

function draw() {
  for (let i = 0; i < dancingWords.length; i++) {
    dancingWords[i].brownian();
  }
}
