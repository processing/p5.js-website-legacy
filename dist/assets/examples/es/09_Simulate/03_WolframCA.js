/*
 * @name Wolfram CA
 * @description Demostración simple de un autómata celular Wolfram unidimensional
 * (<a href="http://natureofcode.com">natureofcode.com</a>)
 */

let w = 10;
// Arreglo de 1s y 0s
let cells;

 // Arbitrariamente inicializar con solo la célula del medio teniendo un estado de "1"
let generation = 0;

// Arreglo para almacenar el conjunto de reglas, por ejemplo {0,1,1,0,1,1,0,1}
let ruleset = [0, 1, 0, 1, 1, 0, 1, 0];

function setup() {
  createCanvas(640, 400);
  cells = Array(floor(width / w));
  for (let i = 0; i < cells.length; i++) {
    cells[i] = 0;
  }
  cells[cells.length/2] = 1;

}

function draw() {
  for (let i = 0; i < cells.length; i++) {
    if (cells[i] === 1) {
      fill(200);
    } else {
      fill(51);
      noStroke();
      rect(i * w, generation * w, w, w);
    }
  }
  if (generation < height / w) {
    generate();
  }
}

// El proceso de crear una nueva generación
function generate() {
  //Primero crear un arreglo vacío para los nuevos valores
  let nextgen = Array(cells.length);
  // Por cada lugar, determinar el nuevo estado según el examen del estado actual y de los estados vecinos
  // Ignorar bordes que solo tienen un vecino
  for (let i = 1; i < cells.length-1; i++) {
    let left   = cells[i-1];   // Estado del vecino izquierdo
    let me     = cells[i];     // Estado actual
    let right  = cells[i+1];   // Estado del vecino derecho
    nextgen[i] = rules(left, me, right); // Calcular el estado siguiente generación basado en el conjunto de reglas
  }
  // La generación actual es la nueva generación
  cells = nextgen;
  generation++;
}


// Implementar las reglas Wolfram
// Puede ser mejorado y más conciso, pero aquí podemos revisar explicitamente lo que está pasando en cada caso
function rules(a, b, c) {
  if (a == 1 && b == 1 && c == 1) return ruleset[0];
  if (a == 1 && b == 1 && c == 0) return ruleset[1];
  if (a == 1 && b == 0 && c == 1) return ruleset[2];
  if (a == 1 && b == 0 && c == 0) return ruleset[3];
  if (a == 0 && b == 1 && c == 1) return ruleset[4];
  if (a == 0 && b == 1 && c == 0) return ruleset[5];
  if (a == 0 && b == 0 && c == 1) return ruleset[6];
  if (a == 0 && b == 0 && c == 0) return ruleset[7];
  return 0;
}
