/*
 * @name Juego de la vida
 * @description Una implementación básica del "Juego de la vida" de John Conway
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
  // Calcular columnas y filas
  columns = floor(width / w);
  rows = floor(height / w);
  // Forma extraña de hacer un arreglo 2D en JS
  board = new Array(columns);
  for (let i = 0; i < columns; i++) {
    board[i] = new Array(rows);
  }
  // Usar múltiples arreglos 2D e intercambiarlos
  next = new Array(columns);
  for (i = 0; i < columns; i++) {
    next[i] = new Array(rows);
  }
  init();
}

function draw() {
  background(255);
  generate();
  for (let i = 0; i < columns; i++) {
    for (let j = 0; j < rows; j++) {
      if (board[i][j] == 1) fill(0);
      else fill(255);
      stroke(0);
      rect(i * w, j * w, w - 1, w - 1);
    }
  }
}

// Resetear tablero cuando el ratón es presionado
function mousePressed() {
  init();
}

// Llenar tablero aleatoriamente
function init() {
  for (let i = 0; i < columns; i++) {
    for (let j = 0; j < rows; j++) {
      // Llenar bordes con 0s
      if (i == 0 || j == 0 || i == columns - 1 || j == rows - 1)
        board[i][j] = 0;
      // Llenar el resto aleatoriamente
      else board[i][j] = floor(random(2));
      next[i][j] = 0;
    }
  }
}

// El proceso de crear una nueva generación
function generate() {
  // Recorrer cada lugar de nuestro arreglo 2D y revisar lugares vecinos
  for (let x = 1; x < columns - 1; x++) {
    for (let y = 1; y < rows - 1; y++) {
      // Sumar todos los estados en la grilla 3x3 vecina
      let neighbors = 0;
      for (let i = -1; i <= 1; i++) {
        for (let j = -1; j <= 1; j++) {
          neighbors += board[x + i][y + j];
        }
      }

      // Un pequeño truco para restar el estado actual de la célula ya que
      // lo sumamos en el bucle anterior
      neighbors -= board[x][y];
      // Reglas de vida
      if (board[x][y] == 1 && neighbors < 2) next[x][y] = 0;
      // Soledad
      else if (board[x][y] == 1 && neighbors > 3) next[x][y] = 0;
      // Sobrepoblación
      else if (board[x][y] == 0 && neighbors == 3) next[x][y] = 1;
      // Reproducción
      else next[x][y] = board[x][y]; // Stasis
    }
  }

  // Intercambiar!
  let temp = board;
  board = next;
  next = temp;
}
