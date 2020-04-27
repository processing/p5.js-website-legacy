/*
 * @name 스네이크 게임
 * @description 그 유명한 스네이크 게임입니다! 실행(run)을 누르고, 
 * 검은 화면 위 아무 지점을 클릭한 뒤, i,j,k,l 키로 뱀을 조종할 수 있습니다.
 * 뱀이 벽이나 자신의 몸에 닿지 않도록 하세요!<br>
 * 예제 제작: <a href='https://github.com/prashantgupta24' target='_blank'>프라샨트 굽타(Prashant Gupta)
 */

// 뱀의 형상은 작은 조각(segment)들로 구성되는데,
// 이는 매 'draw' 호출에서 그려지고 수정됩니다.
let numSegments = 10;
let direction = 'right';

const xStart = 0; // 뱀의 시작 x좌표
const yStart = 250; // 뱀의 시작 y좌표
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
 뱀의 방향에 따라, 뱀의 형상을 구성하는 작은 조각(segment)들의 위치가 업데이트됩니다.
 0에서 n-1까지의 모든 조각들은 n에 도달할 때까지 그 다음 조각의 위치를 복사합니다.
 예를 들어, segment 0은 segment 1의 값을 받고, segment 1은 segment 2의 값을 받습니다. 뱀은 이러한 과정을 통해 움직이는 것입니다.
 이 때, 마지막 조각(segment)은 뱀이 가는 방향에 따라 추가됩니다. 
 뱀이 좌우로 움직일 때 가장 마지막 조각의 x값은, 마지막에서 두번째 조각의 x값보다 'diff'값만큼 증가합니다.
 뱀이 상하로 움직일 때는 가장 마지막 조각의 y값이 증가하는 식입니다.
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
 전 항상 뱀의 머리 위치인 xCor[xCor.length - 1]와
 yCor[yCor.length - 1]를 확인하여 뱀이 화면 경계나 자신의 몸에 닿는지를 본답니다.
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
 뱀이 자신의 몸에 닿았다는건 다시말해, 뱀의 머리의 (x,y)좌표가
 조각(segment)들 중 한 (x,y)좌표와 일치한다는 것입니다.
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
 뱀이 과일을 먹을 때마다 조각의 수가 증가하고, 배열의 시작에 꼬리 조각이 다시 삽입되도록 설정했습니다.(기본적으로, 마지막 조각을 꼬리 부분에 추가하여 꼬리를 늘리는 식이지요.)
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
    여기서 복잡한 연산 논리가 추가된 이유는
    뱀이 10의 배수 단위로 움직이도록 설정했기 때문입니다.
    점을 너비 100과 -100 사이에 있도록 하고,
    그 위치값이 가장 가까운 10의 배수 숫자로 반올림되도록 처리하였습니다.
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
