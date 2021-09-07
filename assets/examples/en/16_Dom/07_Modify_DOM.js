/*
 * @name Modifying the DOM
 * @arialabel Words in black font jittering on a white background
 * @frame 710,300
 * @description Create DOM elements and modify their properties every time
 * draw() is called.
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
  // This paragraph is created aside of the main block of code.
  // It's to differentiate the creation of an element from its
  // selection. Selected elements don't need to be created by
  // p5js, they can be just plain HTML.
  createP(
    'I learn in this Letter, that Don Peter of Aragon, ' +
      ' comes this night to Messina'
  ).addClass('text').hide();

  // This line grabs the paragraph just created, but it would
  // also grab any other elements with class 'text' in the HTML
  // page.
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
