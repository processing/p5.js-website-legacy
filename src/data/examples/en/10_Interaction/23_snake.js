/*
 *@name Snake game
 *@description The famous snake game! (Once you click run, click anywhere
inside the black area, and control the snake using i j k and l. (The arrow keys keep
scrolling the page)

Don't let the snake hit itself or the wall!
*/

// the snake is divided into small segments, which are drawn and edited on each 'draw' call
let numSegments = 10;
let direction = 'right';
let playing = true;

let xStart = 0; //starting x coordinate for snake
let yStart = 250; //starting y coordinate for snake
let diff = 10;

let xCor = [];
let yCor = [];

let xFruit = 0;
let yFruit = 0;
//let score = $('#score');

function setup () {
  initialize();
}

function initialize() {
  let canvas = createCanvas(500, 500);
  //canvas.parent('snakeCanvas');
  frameRate(15);
  stroke(255);
  strokeWeight(10);
  //score.html(0);
  updateFruitCoordinates();

  for (let i = 0; i < numSegments; i++) {
    xCor.push(xStart + (i * diff));
    yCor.push(yStart);
  }
}

function draw() {
  if (playing) {
    background(0);
    for (let i = 0; i < numSegments - 1; i++) {
      line(xCor[i], yCor[i], xCor[i + 1], yCor[i + 1]);
    }
    updateSnakeCoordinates();
    checkGameStatus();
    checkForFruit();
  }
}

/*
 The segments are updated based on the direction of the snake.
 All segments from 0 to n-1 are just copied over to 1 till n, i.e. segment 0
 gets the value of segment 1, segment 1 gets the value of segment 2, and so on,
 and this results in the movement of the snake.

 The last segment is added based on the direction in which the snake is going,
 if it's going left or right, the last segment's x coordinate is increased by a
 predefined value 'diff' than its second to last segment. And if it's going up
 or down, the segment's y coordinate is affected.
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
 I always check the snake's head position xCor[xCor.length - 1] and
 yCor[yCor.length - 1] to see if it touches the game's boundaries
 or if the snake hits itself.
*/
function checkGameStatus() {
  if (xCor[xCor.length - 1] > width ||
      xCor[xCor.length - 1] < 0 ||
      yCor[yCor.length - 1] > height ||
      yCor[yCor.length - 1] < 0 ||
      checkSnakeCollision()) {
    playing = false;
    //let scoreVal = score.html();
    //score.html('Game ended! Your score was : ' + scoreVal);
  }
}

/*
 If the snake hits itself, that means the snake head's (x,y) coordinate
 has to be the same as one of its own segment's (x,y) coordinate.
*/
function checkSnakeCollision () {
  let snakeHeadX = xCor[xCor.length - 1];
  let snakeHeadY = yCor[yCor.length - 1];
  for(let i=0;i<xCor.length-1;i++){
    if(xCor[i] === snakeHeadX) {
      if(yCor[i] === snakeHeadY) {
        return true;
      }
    }
  }
}

/*
 Whenever the snake consumes a fruit, I increment the number of segments,
 and just insert the tail segment again at the start of the array (basically
 I add the last segment again at the tail, thereby extending the tail)
*/
function checkForFruit() {
  point(xFruit, yFruit);
  if (xCor[xCor.length - 1] === xFruit && yCor[yCor.length - 1] === yFruit) {
    //let prevScore = parseInt(score.html());
    //score.html((prevScore + 1));
    xCor.unshift(xCor[0]);
    yCor.unshift(yCor[0]);
    numSegments++;
    updateFruitCoordinates();
  }
}

function updateFruitCoordinates() {
  /*
    The complex math logic is because I wanted the point to lie
    in between 100 and width-100, and be rounded off to the nearest
    number divisible by 10, since I move the snake in multiples of 10.
  */
  xFruit = (Math.floor((Math.random() * ((width - 200) / 10)) + 10) * 10);
  yFruit = (Math.floor((Math.random() * ((height - 200) / 10)) + 10) * 10);
}

function keyPressed() {
  switch (keyCode) {
    case 74:
      if (direction != 'right') {
        direction = 'left';
      }
      break;
    case 76:
      if (direction != 'left') {
        direction = 'right';
      }
      break;
    case 73:
      if (direction != 'down') {
        direction = 'up';
      }
      break;
    case 75:
      if (direction != 'up') {
        direction = 'down';
      }
      break;
  }
}
