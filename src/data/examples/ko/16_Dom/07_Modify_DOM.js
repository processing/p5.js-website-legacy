/*
<<<<<<< HEAD
 * @name DOM 변경
 * @frame 710,300
 * @description <p>DOM 요소를 만들고 draw()함수가 매번 호출될 때마다
 * 그 속성들을 변경해보세요. 여러분의 프로젝트에서 이 예제를 실행하려면, 
 * <a href="http://p5js.org/reference/#/libraries/p5.dom">p5.dom 라이브러리</a>
 * 를 추가하면 됩니다.</p>
=======
 * @name Modifying the DOM
 * @frame 710,300
 * @description <p>Create DOM elements and modify their properties every time
 * draw() is called. You will need to include the
 * <a href="http://p5js.org/reference/#/libraries/p5.dom">p5.dom library</a>
 * for this example to work in your own project.</p>
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
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
<<<<<<< HEAD
  // 이 단락은 윗 단의 주요 코드 블록의 부록으로 작성되었습니다.
  // 아래의 코드들은 요소의 생성과 지정 기능을 각각 구분하고자 합니다.
  // 지정된 요소들은 p5js로 생성될 필요가 없으며,
  // 일반적인 HTML일 수 있습니다.
=======
  // This paragraph is created aside of the main block of code.
  // It's to differentiate the creation of an element from its
  // selection. Selected elements don't need to be created by
  // p5js, they can be just plain HTML.
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  createP(
    'I learn in this Letter, that Don Peter of Aragon, ' +
      ' comes this night to Messina'
  ).addClass('text').hide();

<<<<<<< HEAD
  // 이 줄은 금방 생성된 '단락'을 받지만,
  // 동시에 HTML 페이지상 'text' 클래스를 가진 다른 요소들을 받아오기도 합니다.
=======
  // This line grabs the paragraph just created, but it would
  // also grab any other elements with class 'text' in the HTML
  // page.
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
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
