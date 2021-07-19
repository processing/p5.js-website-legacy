/*
  * @name सांप का खेल
  * @description प्रसिद्ध सांप का खेल! रन पर क्लिक करने के बाद, कहीं भी क्लिक करें
  * काले क्षेत्र के अंदर, और i j k और l का उपयोग करके सांप को नियंत्रित करें। मत जाने दो
  *सांप खुद को या दीवार से टकराया!<br>
  * उदाहरण <a href='https://github.com/prashantgupta24' target='_blank'>प्रशांत गुप्ता द्वारा बनाया गया
  */

// सांप को छोटे-छोटे खंडों में विभाजित किया जाता है, जिन्हें प्रत्येक 'ड्रा' कॉल पर खींचा और संपादित किया जाता है
let numSegments = 10;
let direction = 'right';

const xStart = 0; // सांप के लिए x निर्देशांक शुरू करना
const yStart = 250; // सांप के लिए y समन्वय शुरू करना
const diff = 10;

let xCor = [];
let yCor = [];

let xFruit = 0;
let yFruit = 0;
let scoreElem;

function setup() {
  scoreElem = createDiv('Score = 0');
  scoreElem.position(20, 20);
  scoreElem.id = 'score';
  scoreElem.style('color', 'white');

  createCanvas(500, 500);
  frameRate(15);
  stroke(255);
  strokeWeight(10);
  updateFruitCoordinates();

  for (let i = 0; i < numSegments; i++) {
    xCor.push(xStart + i * diff);
    yCor.push(yStart);
  }
}

function draw() {
  background(0);
  for (let i = 0; i < numSegments - 1; i++) {
    line(xCor[i], yCor[i], xCor[i + 1], yCor[i + 1]);
  }
  updateSnakeCoordinates();
  checkGameStatus();
  checkForFruit();
}

/*
  साँप की दिशा के आधार पर खंडों को अद्यतन किया जाता है।
  0 से n-1 तक के सभी खंडों को 1 से n तक कॉपी किया जाता है, अर्थात खंड 0
  खंड 1 का मान प्राप्त करता है, खंड 1 को खंड 2 का मान मिलता है, और इसी तरह,
  और इसके परिणामस्वरूप सांप की गति होती है।

  सांप जिस दिशा में जा रहा है, उसके आधार पर अंतिम खंड जोड़ा जाता है,
  यदि यह बाएँ या दाएँ जा रहा है, तो अंतिम खंड का x निर्देशांक a . से बढ़ जाता है
  इसके दूसरे से अंतिम खंड की तुलना में पूर्वनिर्धारित मान 'diff'। और अगर यह ऊपर जा रहा है
  या नीचे, खंड का y निर्देशांक प्रभावित होता है।
*/
function updateSnakeCoordinates() {
  for (let i = 0; i < numSegments - 1; i++) {
    xCor[i] = xCor[i + 1];
    yCor[i] = yCor[i + 1];
  }
  switch (direction) {
    case 'right':
      xCor[numSegments - 1] = xCor[numSegments - 2] + diff;
      yCor[numSegments - 1] = yCor[numSegments - 2];
      break;
    case 'up':
      xCor[numSegments - 1] = xCor[numSegments - 2];
      yCor[numSegments - 1] = yCor[numSegments - 2] - diff;
      break;
    case 'left':
      xCor[numSegments - 1] = xCor[numSegments - 2] - diff;
      yCor[numSegments - 1] = yCor[numSegments - 2];
      break;
    case 'down':
      xCor[numSegments - 1] = xCor[numSegments - 2];
      yCor[numSegments - 1] = yCor[numSegments - 2] + diff;
      break;
  }
}

/*
  मैं हमेशा सांप के सिर की स्थिति की जांच करता हूं xCor[xCor.length - 1] और
  yCor[yCor.length - 1] यह देखने के लिए कि क्या यह खेल की सीमाओं को छूता है
  या अगर सांप खुद को मारता है।
*/
function checkGameStatus() {
  if (
    xCor[xCor.length - 1] > width ||
    xCor[xCor.length - 1] < 0 ||
    yCor[yCor.length - 1] > height ||
    yCor[yCor.length - 1] < 0 ||
    checkSnakeCollision()
  ) {
    noLoop();
    const scoreVal = parseInt(scoreElem.html().substring(8));
    scoreElem.html('Game ended! Your score was : ' + scoreVal);
  }
}

/*
  यदि सांप खुद को मारता है, तो इसका मतलब है कि सांप का सिर (x,y) समन्वय करता है
  अपने स्वयं के खंड (x, y) निर्देशांक में से एक के समान होना चाहिए।
*/
function checkSnakeCollision() {
  const snakeHeadX = xCor[xCor.length - 1];
  const snakeHeadY = yCor[yCor.length - 1];
  for (let i = 0; i < xCor.length - 1; i++) {
    if (xCor[i] === snakeHeadX && yCor[i] === snakeHeadY) {
      return true;
    }
  }
}

/*
  जब भी सांप फल खाता है, मैं खंडों की संख्या बढ़ा देता हूं,
  और सरणी की शुरुआत में फिर से पूंछ खंड डालें (मूल रूप से
  मैं अंतिम खंड को फिर से पूंछ में जोड़ता हूं, जिससे पूंछ का विस्तार होता है)
*/
function checkForFruit() {
  point(xFruit, yFruit);
  if (xCor[xCor.length - 1] === xFruit && yCor[yCor.length - 1] === yFruit) {
    const prevScore = parseInt(scoreElem.html().substring(8));
    scoreElem.html('Score = ' + (prevScore + 1));
    xCor.unshift(xCor[0]);
    yCor.unshift(yCor[0]);
    numSegments++;
    updateFruitCoordinates();
  }
}

function updateFruitCoordinates() {
 /*
     जटिल गणित तर्क इसलिए है क्योंकि मैं चाहता था कि बिंदु झूठ बोलें
     १०० और चौड़ाई १०० के बीच में, और निकटतम तक पूर्णांकित किया जाए
     संख्या १० से विभाज्य है, क्योंकि मैं साँप को १० के गुणकों में घुमाता हूँ।
 */

  xFruit = floor(random(10, (width - 100) / 10)) * 10;
  yFruit = floor(random(10, (height - 100) / 10)) * 10;
}

function keyPressed() {
  switch (keyCode) {
    case 74:
      if (direction !== 'right') {
        direction = 'left';
      }
      break;
    case 76:
      if (direction !== 'left') {
        direction = 'right';
      }
      break;
    case 73:
      if (direction !== 'down') {
        direction = 'up';
      }
      break;
    case 75:
      if (direction !== 'up') {
        direction = 'down';
      }
      break;
  }
}
