/*
 * @name Juego de Serpiente
 * @description El famoso juego de Serpiente! Después de hacer click en run/ejecutar, haz click en cualquier parte
 * dentro del área negra, y controla la serpiente usando i,j,k,l. No dejes que
 * la serpiente choque contra sí misma o la pared.<br>
 * Ejemplo creado por <a href='https://github.com/prashantgupta24' target='_blank'>Prashant Gupta
 */

// La serpiente se divide en pequeños segmentos, los que son dibujados y editados en cada ejecución de draw()
let numeroSegmentos = 10;
let direccion = 'derecha';

const xInicio = 0; //coordenada x de partida de la serpiente
const yInicio = 250; //coordenada y de partida de la serpiente
const diferencia = 10;

let xCuerpo = [];
let yCuerpo = [];

let xFruta = 0;
let yFruta = 0;
let elementoPuntaje;

function setup() {
  elementoPuntaje = createDiv('Puntaje = 0');
  elementoPuntaje.position(20, 20);
  elementoPuntaje.id = 'puntaje';
  elementoPuntaje.style('color', 'white');

  createCanvas(500, 500);
  frameRate(15);
  stroke(255);
  strokeWeight(10);
  actualizarCoordenadasFruta();

  for (let i = 0; i < numeroSegmentos; i++) {
    xCuerpo.push(xInicio + i * diferencia);
    yCuerpo.push(yInicio);
  }
}

function draw() {
  background(0);
  for (let i = 0; i < numeroSegmentos - 1; i++) {
    line(xCuerpo[i], yCuerpo[i], xCuerpo[i + 1], yCuerpo[i + 1]);
  }
  actualizarCoordenadasSerpiente();
  comprobarEstadoJuego();
  comprobarFruta();
}

/*
 Los segmentos son actualizados en la dirección de la serpiente.
 Todos los segmentos entre 0 y n-1 son copiados al rango 1 hasta n, por ejemplo, el segmento 0 recibe el valor del segmento 1, el segmento 1 recibe el
vallor del segmento 2, y así, esto resulta en el movimiento de la serpiente.

 El último segmento es añadido según la dirección de movimiento de la serpiente,
 si está yendo hacia izquierda o derecha, la coordenada x del último segmento
 es igual a sumar un valor predefinido como 'diferencia' al valor del penúltimo
 segmento. Y si está yendo hacia arriba o abajo, la coordenada y es afectada.
 }

*/
function actualizarCoordenadasSerpiente() {
  for (let i = 0; i < numeroSegmentos - 1; i++) {
    xCuerpo[i] = xCuerpo[i + 1];
    yCuerpo[i] = yCuerpo[i + 1];
  }
  switch (direccion) {
    case 'derecha':
      xCuerpo[numeroSegmentos - 1] = xCuerpo[numeroSegmentos - 2] + diferencia;
      yCuerpo[numeroSegmentos - 1] = yCuerpo[numeroSegmentos - 2];
      break;
    case 'arriba':
      xCuerpo[numeroSegmentos - 1] = xCuerpo[numeroSegmentos - 2];
      yCuerpo[numeroSegmentos - 1] = yCuerpo[numeroSegmentos - 2] - diferencia;
      break;
    case 'izquierda':
      xCuerpo[numeroSegmentos - 1] = xCuerpo[numeroSegmentos - 2] - diferencia;
      yCuerpo[numeroSegmentos - 1] = yCuerpo[numeroSegmentos - 2];
      break;
    case 'abajo':
      xCuerpo[numeroSegmentos - 1] = xCuerpo[numeroSegmentos - 2];
      yCuerpo[numeroSegmentos - 1] = yCuerpo[numeroSegmentos - 2] + diferencia;
      break;
  }
}

/*
 Siempre reviso la posición de la cabeza de la serpiente
 xCuerpo[xCuerpo.length - 1] e yCuerpo[yCuerpo.length - 1] para revisar si toca
 los bordes del juego o si la serpiente se estrelló contra sí misma.
*/
function comprobarEstadoJuego() {
  if (
    xCuerpo[xCuerpo.length - 1] > width ||
    xCuerpo[xCuerpo.length - 1] < 0 ||
    yCuerpo[yCuerpo.length - 1] > height ||
    yCuerpo[yCuerpo.length - 1] < 0 ||
    detectarColision()
  ) {
    noLoop();
    const puntajeValor = parseInt(elementoPuntaje.html().substring(8));
    elementoPuntaje.html('Juego finalizado! Tu puntaje fue: ' + puntajeValor);
  }
}

/*
 Si la serpiente se estrella contra sí misma, esto significa que la coordenada
 (x,y) tiene que ser igual a la de un segmento propio.
*/
function detectarColision() {
  const cabezaSerpienteX = xCuerpo[xCuerpo.length - 1];
  const cabezaSerpienteY = yCuerpo[yCuerpo.length - 1];
  for (let i = 0; i < xCuerpo.length - 1; i++) {
    if (xCuerpo[i] === cabezaSerpienteX && yCuerpo[i] === cabezaSerpienteY) {
      return true;
    }
  }
}

/*
 Cada vez que la serpiente consume una fruta, incremento el número de segmentos,
 y simplemente inserto este segmento de cola nuevamente al principio del arreglo
 (básicamente añado el último segmento a la cola, con lo que la alargo).
*/
function comprobarFruta() {
  point(xFruta, yFruta);
  if (
    xCuerpo[xCuerpo.length - 1] === xFruta &&
    yCuerpo[yCuerpo.length - 1] === yFruta
  ) {
    const prevScore = parseInt(elementoPuntaje.html().substring(8));
    elementoPuntaje.html('Score = ' + (prevScore + 1));
    xCuerpo.unshift(xCuerpo[0]);
    yCuerpo.unshift(yCuerpo[0]);
    numeroSegmentos++;
    actualizarCoordenadasFruta();
  }
}

function actualizarCoordenadasFruta() {
  /*
    Hice matemática compleja porque quería que el punto estuviera
    entre 100 y width-100, y que fuera aproximado al número divisible
    por 10 más cercano, ya que muevo la serpiente en múltiplos de 10.
  */

  xFruta = floor(random(10, (width - 100) / 10)) * 10;
  yFruta = floor(random(10, (height - 100) / 10)) * 10;
}

function keyPressed() {
  switch (keyCode) {
    case 74:
      if (direccion !== 'derecha') {
        direccion = 'izquierda';
      }
      break;
    case 76:
      if (direccion !== 'izquierda') {
        direccion = 'derecha';
      }
      break;
    case 73:
      if (direccion !== 'abajo') {
        direccion = 'arriba';
      }
      break;
    case 75:
      if (direccion !== 'arriba') {
        direccion = 'abajo';
      }
      break;
  }
}
