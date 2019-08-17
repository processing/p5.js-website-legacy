
/*
 * @name Espirógrafo
 * @description Este bosquejo usa transformaciones siples para crear un
 * efecto tipo espirógrafo con partículas entrelazadas(llamadas sinusoides).
 * Presiona la barra espaciadora para alternar entre dibujar y mostrar la geometría subyacente.<br>
 * Ejemplo creado por <a href='http://lukedubois.com/' target='_blank'>R. Luke DuBois</a>.<br>
 * <a href='http://en.wikipedia.org/wiki/Spirograph'>http://en.wikipedia.org/wiki/Spirograph</a>
 */
let NUMSINES = 20; // cuántas partículas podemos hacer al mismo tiempo?
let sines = new Array(NUMSINES); // un arreglo para almacenar todos los ángulos actuales
let rad; // un valor de radio inicial para la sinusoide central
let i; // una variable contador

// juega con estos valores para entender lo que está pasando:
let fund = 0.005; // la velocidad de la sinusoide central
let ratio = 1; // ¿cuál es el multiplicador de velocidad por cada sinusoide adicional?
let alpha = 50; // cuán opaco es el sistema de trazado

let trace = false; // ¿estamos trazando?

function setup() {
  createCanvas(710, 400);

  rad = height / 4; // calcular radio del círculo central
  background(204); // limpiar la pantalla

  for (let i = 0; i < sines.length; i++) {
    sines[i] = PI; // inicializar cada uno en dirección norte
  }
}

function draw() {
  if (!trace) {
    background(204); // limpiar pantalla si es necesario
    stroke(0, 255); // lápiz negro
    noFill(); // sin relleno
  }

  // ACCION PRINCIPAL
  push(); // empezar una matriz de transformación
  translate(width / 2, height / 2); // mover al centro de la pantalla

  for (let i = 0; i < sines.length; i++) {
    let erad = 0; // radio del "punto" pequeño dentro del círculo... este es el "lápiz" para trazar
    // configuración de trazado
    if (trace) {
      stroke(0, 0, 255 * (float(i) / sines.length), alpha); // azul
      fill(0, 0, 255, alpha / 2); // también azul
      erad = 5.0 * (1.0 - float(i) / sines.length); // ancho del lápiz dependerá de la sinusoide
    }
    let radius = rad / (i + 1); // radio del círculo
    rotate(sines[i]); // rotar círculo
    if (!trace) ellipse(0, 0, radius * 2, radius * 2); // si estamos simulando, dibujar la sinusoide
    push(); // subir un nivel
    translate(0, radius); // moverse al borde de la sinusoide
    if (!trace) ellipse(0, 0, 5, 5); // dibujar un círculo pequeño
    if (trace) ellipse(0, 0, erad, erad); // dibujar con erad si estamos trazando
    pop(); // bajar un nivel
    translate(0, radius); // moverse a la posición de la siguiente sinusoide
    sines[i] = (sines[i] + (fund + (fund * i * ratio))) % TWO_PI; // actualizar ángulo basado en la fundamental
  }

  pop(); // bajar a la transformación final

}

function keyReleased() {
  if (key==' ') {
    trace = !trace;
    background(255);
  }
}
