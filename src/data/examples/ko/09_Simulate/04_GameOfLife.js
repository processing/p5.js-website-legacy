/*
<<<<<<< HEAD
 * @name 라이프 게임
 * @description 존 콘웨이(John Conway)의 라이프 게임 셀룰러 오토마타
 * (Game of Life Cellular Automata)의 기초적 구현
=======
 * @name Game of Life
 * @description A basic implementation of John Conway's Game of Life CA
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
 * (<a href="http://natureofcode.com">natureofcode.com</a>)
 */

let w;
let columns;
let rows;
let board;
let next;

function setup() {
  createCanvas(720, 400);
  w = 20;
<<<<<<< HEAD
  // 행렬 계산하기
  columns = floor(width / w);
  rows = floor(height / w);
  // JS를 사용하여 요상한 2D 배열 만들기
=======
  // Calculate columns and rows
  columns = floor(width / w);
  rows = floor(height / w);
  // Wacky way to make a 2D array is JS
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  board = new Array(columns);
  for (let i = 0; i < columns; i++) {
    board[i] = new Array(rows);
  }
<<<<<<< HEAD
  // 복수의 2D 배열을 만들고 바꾸기
=======
  // Going to use multiple 2D arrays and swap them
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  next = new Array(columns);
  for (i = 0; i < columns; i++) {
    next[i] = new Array(rows);
  }
  init();
}

function draw() {
  background(255);
  generate();
  for ( let i = 0; i < columns;i++) {
    for ( let j = 0; j < rows;j++) {
      if ((board[i][j] == 1)) fill(0);
      else fill(255);
      stroke(0);
      rect(i * w, j * w, w-1, w-1);
    }
  }

}

<<<<<<< HEAD
// 마우스 버튼 클릭시 보드 리셋하기
=======
// reset board when mouse is pressed
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
function mousePressed() {
  init();
}

<<<<<<< HEAD
// 무작위로 보드 채우기
function init() {
  for (let i = 0; i < columns; i++) {
    for (let j = 0; j < rows; j++) {
      // 0으로 모서리 테두리 그리기
      if (i == 0 || j == 0 || i == columns-1 || j == rows-1) board[i][j] = 0;
      // 나머지는 무작위로 채우기
=======
// Fill board randomly
function init() {
  for (let i = 0; i < columns; i++) {
    for (let j = 0; j < rows; j++) {
      // Lining the edges with 0s
      if (i == 0 || j == 0 || i == columns-1 || j == rows-1) board[i][j] = 0;
      // Filling the rest randomly
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
      else board[i][j] = floor(random(2));
      next[i][j] = 0;
    }
  }
}

<<<<<<< HEAD
// 새로운 세대 생성하는 과정
function generate() {

  // 2D 배열 상 모든 셀들을 걸쳐 반복하며 각 셀별 이웃 확인하기
  for (let x = 1; x < columns - 1; x++) {
    for (let y = 1; y < rows - 1; y++) {
      // 3x3의 주변 그리드에 모든 상태들을 더하여 넣기
=======
// The process of creating the new generation
function generate() {

  // Loop through every spot in our 2D array and check spots neighbors
  for (let x = 1; x < columns - 1; x++) {
    for (let y = 1; y < rows - 1; y++) {
      // Add up all the states in a 3x3 surrounding grid
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
      let neighbors = 0;
      for (let i = -1; i <= 1; i++) {
        for (let j = -1; j <= 1; j++) {
          neighbors += board[x+i][y+j];
        }
      }

<<<<<<< HEAD
      // 위의 반복을 통해 모든 셀들의 현재 상태를 계산해 넣었으므로,
      // 이 계산을 빼주는 요령
      neighbors -= board[x][y];
      // 라이프 규칙
      if      ((board[x][y] == 1) && (neighbors <  2)) next[x][y] = 0;           // 외로움
      else if ((board[x][y] == 1) && (neighbors >  3)) next[x][y] = 0;           // 인구과잉
      else if ((board[x][y] == 0) && (neighbors == 3)) next[x][y] = 1;           // 재생산
      else                                             next[x][y] = board[x][y]; // 균형
    }
  }

  // 바꾸기!
=======
      // A little trick to subtract the current cell's state since
      // we added it in the above loop
      neighbors -= board[x][y];
      // Rules of Life
      if      ((board[x][y] == 1) && (neighbors <  2)) next[x][y] = 0;           // Loneliness
      else if ((board[x][y] == 1) && (neighbors >  3)) next[x][y] = 0;           // Overpopulation
      else if ((board[x][y] == 0) && (neighbors == 3)) next[x][y] = 1;           // Reproduction
      else                                             next[x][y] = board[x][y]; // Stasis
    }
  }

  // Swap!
>>>>>>> cf3314557fcd084720a3cbca0fa45ce5ce151753
  let temp = board;
  board = next;
  next = temp;
}

