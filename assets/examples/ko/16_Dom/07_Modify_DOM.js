/*
 * @name DOM 변경
 * @frame 710,300
 * @description <p>DOM 요소를 만들고 draw()함수가 매번 호출될 때마다
 * 그 속성들을 변경해보세요. 로컬 프로젝트에서 이 예제를 실행하려면, 
 * <a href="http://p5js.org/reference/#/libraries/p5.dom">p5.dom 라이브러리</a>
 * 를 추가하면 됩니다.</p>
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
  // 이 단락은 위의 주요 코드 블록의 부록으로서 작성됩니다.
  // 아래의 코드들은 요소의 생성과 지정 기능을 구분합니다.
  // 지정된 요소들은 p5js로 별도 생성될 필요가 없으며,
  // 일반적인 HTML처럼 쓰일 수 있습니다.
  createP(
    'I learn in this Letter, that Don Peter of Aragon, ' +
      ' comes this night to Messina'
  ).addClass('text').hide();

  // 이 줄은 금방 생성된 '단락'을 받지만,
  // 동시에 HTML 페이지상 'text' 클래스를 가진 다른 요소들을 받아오기도 합니다.
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
