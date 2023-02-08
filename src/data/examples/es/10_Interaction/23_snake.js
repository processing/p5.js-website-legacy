/*
 * @name Juego de Serpiente
 * @description El famoso juego de Serpiente! Después de hacer click en run/ejecutar, haz click en cualquier parte
 * dentro del área negra, y controla la serpiente usando i,j,k,l. No dejes que
 * la serpiente choque contra sí misma o la pared.<br>
 * Ejemplo creado por <a href='https://github.com/prashantgupta24' target='_blank'>Prashant Gupta
 */

// La serpiente se divide en pequeños segmentos, los que son dibujados y editados en cada ejecución de draw()
let numSegments = 10;
let direction = 'right';

const xStart = 0; //coordenada x de partida de la serpiente
const yStart = 250; //coordenada y de partida de la serpiente
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
 Los segmentos son actualizados en la dirección de la serpiente.
 Todos los segmentos entre 0 y n-1 son copiados al rango 1 hasta n, por ejemplo, el segmento 0 recibe el valor del segmento 1, el segmento 1 recibe el
 valor del segmento 2, y así, esto resulta en el movimiento de la serpiente.

 El último segmento es añadido según la dirección de movimiento de la serpiente,
 si está yendo hacia izquierda o derecha, la coordenada x del último segmento
 es igual a sumar un valor predefinido como 'diff' al valor del penúltimo
 segmento. Y si está yendo hacia arriba o abajo, la coordenada y es afectada.
 }

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
 Siempre reviso la posición de la cabeza de la serpiente
 xCor[xCor.length - 1] e yCor[yCor.length - 1] para revisar si toca
 los bordes del juego o si la serpiente se estrelló contra sí misma.
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
 Si la serpiente se estrella contra sí misma, esto significa que la coordenada
 (x,y) tiene que ser igual a la de un segmento propio.
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
 Cada vez que la serpiente consume una fruta, incremento el número de segmentos,
 y simplemente inserto este segmento de cola nuevamente al principio del arreglo
 (básicamente añado el último segmento a la cola, con lo que la alargo).
*/
function checkForFruit() {
  point(xFruit, yFruit);
  if (xCor[xCor.length - 1] === xFruit &&yCor[yCor.length - 1] === yFruit) {
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
    Hice matemática compleja porque quería que el punto estuviera
    entre 100 y width-100, y que fuera aproximado al número divisible
    por 10 más cercano, ya que muevo la serpiente en múltiplos de 10.
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
