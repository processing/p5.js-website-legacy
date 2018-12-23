/*
 * @name Modifying the DOM
 * @frame 710,300
 * @description <p>Create DOM elements and modify their properties every time
 * draw() is called. You will need to include the
 * <a href="http://p5js.org/reference/#/libraries/p5.dom">p5.dom library</a>
 * for this example to work in your own project.</p>
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
  // This paragraph is created aside of the main block of code.
  // It's to differentiate the creation of an element from its
  // selection. Selected elements don't need to be created by
  // p5js, they can be just plain HTML.
  createP(
    'I learn in this Letter, that Don Peter of Aragon, ' +
      ' comes this night to Messina'
  ).addClass('text');

  // This line grabs the paragraph just created, but it would
  // also grab any other elements with class 'text' in the HTML
  // page.
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
