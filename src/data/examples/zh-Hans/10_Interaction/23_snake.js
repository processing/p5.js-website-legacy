/*
 * @name 贪吃蛇
 * @description 著名的贪吃蛇游戏！点击 run 后，在黑色区域里任意点击， 
 * 使用 i j k 和 l 控制蛇。注意不要让蛇碰到自己或者墙。<br>
 * 由 <a href='https://github.com/prashantgupta24' target='_blank'>Prashant Gupta 创作的范例
 */

// 蛇被分为几小段，在每次调用 draw() 时进行绘制和编辑
let numSegments = 10;
let direction = 'right';

const xStart = 0; // 蛇的初始 x 坐标
const yStart = 250; //蛇的初始 y 坐标
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
 根据蛇的方向更新每个小段。
 从 0 至 n-1 的所有片段都被复制到 1 至 n，也就是说，段 0 获取 段 1 的值，
 段 1 获取 段 2 的值，以此类推。因此，蛇就会动起来了。

 最后一小段根据蛇运动的方向添加。如果蛇在左后移动，最后一小段的 x 坐标值将比倒数第二小段
 增加预定义值 "diff"；如果上下移动，则更改其 y 坐标值。
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
 检查蛇头的位置 xCor[xCor.length - 1] 和 yCor[yCor.length - 1] 来看它是否
 碰到边界或者自己。
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
 如果蛇碰到自己，说明蛇头的 (x,y) 坐标和它自身的小段之一的 (x,y) 坐标相同。
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
 蛇每吃一个水果，小段的数量就会增加，然后将尾段插入数组的开头
 （将最后一个小段再次添加到尾部，从而延长了尾部）
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
    这里的数学逻辑是因为我希望这个点位于 100 和 width-100 之间，并四舍五入到
    10 的倍数 ，因为蛇以 10 的倍数移动。
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
