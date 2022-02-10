/*
 * @name Sístemas-L
 * @description Este bosquejo crea un dibujo automatizado basado en un sistema Lindenmayer
 * o sistema-L. Los sistemas-L son utilizados a menudo en gráfica procedural para hacer
 * patrones naturales, geométricos o de tipo fractal.<br>
 * Ejemplo creado por <a href='http://lukedubois.com/' target='_blank'>R. Luke DuBois</a>.<br>
 * <a href='https://en.wikipedia.org/wiki/L-system'>https://en.wikipedia.org/wiki/L-system</a>
 */
// SECCIÓN TORTUGA:
let x, y; // la posición actual de la tortuga
let currentangle = 0; // hacia dónde apunta la tortuga
let step = 20; // cuánto se mueve la tortuga en cada 'F'
let angle = 90; // cuánto gira la tortuga con un '-' or '+'

// SECCIÓN LINDENMAYER (SISTEMAS-L)
let thestring = 'A'; // "axioma" o inicio de la cadena
let numloops = 5; // cuántas iteraciones a pre-computar
let therules = []; // arreglo para las reglas
therules[0] = ['A', '-BF+AFA+FB-']; // primera regla
therules[1] = ['B', '+AF-BFB-FA+']; // segunda regla

let whereinstring = 0; // dónde estamos en el sistema-L

function setup() {
  createCanvas(710, 400);
  background(255);
  stroke(0, 0, 0, 255);

  // inicializar la posición x e y en la esquina inferior izquierda
  x = 0;
  y = height - 1;

  // CALCULAR EL SISTEMA-L
  for (let i = 0; i < numloops; i++) {
    thestring = lindenmayer(thestring);
  }
}

function draw() {

  // dibujar el caracter actual en la pantalla
  drawIt(thestring[whereinstring]);

  // incrementar el punto de donde leemos la cadena.
  // si sobrepasamos el final, volver al inicio.
  whereinstring++;
  if (whereinstring > thestring.length - 1) whereinstring = 0;

}

// interpretar un sistema-L
function lindenmayer(s) {
  let outputstring = ''; // inicializar una cadena de salida en blanco

  // iterar a lo largo de las  'reglas' buscando coincidencias de símbolo:
  for (let i = 0; i < s.length; i++) {
    let ismatch = 0; // por defecto, sin coincidencia
    for (let j = 0; j < therules.length; j++) {
      if (s[i] == therules[j][0])  {
        outputstring += therules[j][1]; //escribir substitución
        ismatch = 1; //si  tenemos una coincidencia, no copiemos el símbolo
        break; // salir de este bucle for()
      }
    }
    // si nada coincide, simplemente copia el símbolo.
    if (ismatch == 0) outputstring += s[i];
  }

  return outputstring; // enviar la cadena modificada
}

// esta es una función que dibuja los comandos de la tortuga
function drawIt(k) {

  if (k=='F') { // dibujar hacia adelante
    // de polar a cartesiano basado en paso y ángulo actual:
    let x1 = x + step * cos(radians(currentangle));
    let y1 = y + step * sin(radians(currentangle));
    line(x, y, x1, y1); // conectar el anterior y el nuevo

    // actualizar la posición de la tortuga:
    x = x1;
    y = y1;
  } else if (k == '+') {
    currentangle += angle; // doblar hacia la izquierda
  } else if (k == '-') {
    currentangle -= angle; // doblar hacia la derecha
  }

  // valores aleatorios de color:
  let r = random(128, 255);
  let g = random(0, 192);
  let b = random(0, 50);
  let a = random(50, 100);

  // escoger una distribución gaussiana (D&D) para el radio:
  let radius = 0;
  radius += random(0, 15);
  radius += random(0, 15);
  radius += random(0, 15);
  radius = radius / 3;

  // dibujar:
  fill(r, g, b, a);
  ellipse(x, y, radius, radius);
}
