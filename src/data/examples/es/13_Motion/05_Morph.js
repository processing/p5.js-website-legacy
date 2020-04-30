/*
 * @name Transformar
 * @frame 720,400
 * @description Cambiar una forma por otra interpolando vértices de uno a otro.
 */

// Dos ArrayList para almacenar los vértices de dos geometrías
// Este ejemplo asume que cada forma tendrá el mismo número de vértices
// es decir, el tamaño de cada ArrayList será el mismo
let circle = [];
let square = [];

// Un ArrayList para un tercer conjunto de vértices, los que dibujaremos
// en la ventana
let morph = [];

// Esta variable booleana controlará si estamos transformando en un círculo o un cuadrado
let state = false;

function setup() {
  createCanvas(720, 400);

  // Crear un círculo usando vectores que apunten desde el centro
  for (let angle = 0; angle < 360; angle += 9) {
    // Ten en cuenta que no estamos empezando desde 0 para que coincida con
    // la trayectoria de un círculo.
    let v = p5.Vector.fromAngle(radians(angle - 135));
    v.mult(100);
    circle.push(v);
    // Llenemos el ArrayList de transformación con PVectores en blanco mientras estamos en ello.
    morph.push(createVector());
  }

  // Un cuadrado es un montón de vértices a lo largo de líneas rectas
  // La parte superior del cuadrado
  for (let x = -50; x < 50; x += 10) {
    square.push(createVector(x, -50));
  }
  // Lado derecho
  for (let y = -50; y < 50; y += 10) {
    square.push(createVector(50, y));
  }
  // Parte inferior
  for (let x = 50; x > -50; x -= 10) {
    square.push(createVector(x, 50));
  }
  // Lado izquierdo
  for (let y = 50; y > -50; y -= 10) {
    square.push(createVector(-50, y));
  }
}

function draw() {
  background(51);

  // Guardaremos la distancia de los vértices de su objetivo
  let totalDistance = 0;

  // Mira cada vértice
  for (let i = 0; i < circle.length; i++) {
    let v1;
    // ¿Estamos yendo hacia el círculo o hacia el cuadrado?
    if (state) {
      v1 = circle[i];
    } else {
      v1 = square[i];
    }
    // Consigue el vértice que dibujaremos
    let v2 = morph[i];
    // Transiciona hacia el objetivo...
    v2.lerp(v1, 0.1);
    // Comprueba lo lejos que estamos del objetivo
    totalDistance += p5.Vector.dist(v1, v2);
  }

  // Si todos los vértices están cerca, cambia de forma
  if (totalDistance < 0.1) {
    state = !state;
  }

  // Dibuja relativo al centro
  translate(width / 2, height / 2);
  strokeWeight(4);
  // Dibuja un polígono compuesto de todos los vértices
  beginShape();
  noFill();
  stroke(255);

  morph.forEach(v => {
    vertex(v.x, v.y);
  });
  endShape(CLOSE);
}
