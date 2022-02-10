/*
 * @name Resorte
 * @frame 710, 400
 * @description Haz click, arrastra y suelta la barra horizontal para inicializar el resorte.
 */
// Constantes de dibujo de resorte para la barra superior
let springHeight = 32,
    left,
    right,
    maxHeight = 200,
    minHeight = 100,
    over = false,
    move = false;

// Constantes de simulación de resorte
let M = 0.8,  // Masa
    K = 0.2,  // Constante de resorte
    D = 0.92, // Amortiguamiento
    R = 150;  // Posición de reposo

// variables de simulación de resorte
let ps = R,   // Posición
    vs = 0.0, // Velocidad
    as = 0,   // Aceleración
    f = 0;    // Fuerza

function setup() {
  createCanvas(710, 400);
  rectMode(CORNERS);
  noStroke();
  left = width / 2 - 100;
  right = width / 2 + 100;
}

function draw() {
  background(102);
  updateSpring();
  drawSpring();
}

function drawSpring() {
  // Dibujar la base
  fill(0.2);
  let baseWidth = 0.5 * ps + -8;
  rect(width/2 - baseWidth, ps + springHeight, width/2 + baseWidth, height);

  // Definir color y dibujar barra superior
  if (over || move) {
    fill(255);
  } else {
    fill(204);
  }

  rect(left, ps, right, ps + springHeight);
}

function updateSpring() {
  // Actualizar posición del resorte
  if ( !move ) {
    f = -K * ( ps - R ); // f=-ky
    as = f / M;          // Definir la aceleración, f=ma == a=f/m
    vs = D * (vs + as);  // Definir la velocidad
    ps = ps + vs;        // Actualizar posición
  }

  if (abs(vs) < 0.1) {
    vs = 0.0;
  }

  // Comprobar si el ratón está sobre la barra superior
  if (mouseX > left && mouseX < right && mouseY > ps && mouseY < ps + springHeight) {
    over = true;
  } else {
    over = false;
  }

  // Definir y limitar la posición de la barra superior
  if (move) {
    ps = mouseY - springHeight / 2;
    ps = constrain(ps, minHeight, maxHeight);
  }
}

function mousePressed() {
  if (over) {
    move = true;
  }
}

function mouseReleased() {
  move = false;
}
