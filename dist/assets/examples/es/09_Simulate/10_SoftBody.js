/*
 * @name Cuerpo blando
 * @description Ejemplo original por Ira Greenberg.
 * <br><br>Simulación de dinámica de cuerpo blando usando curveVertex() y curveTightness().
 */
// Punto central
let centerX = 0.0, centerY = 0.0;

let radius = 45, rotAngle = -90;
let accelX = 0.0, accelY = 0.0;
let deltaX = 0.0, deltaY = 0.0;
let springing = 0.0009, damping = 0.98;

// nodos esquina
let nodes = 5;

// Arreglos vacíos
let nodeStartX = [];
let nodeStartY = [];
let nodeX = [];
let nodeY = [];
let angle = [];
let frequency = [];

// Dinámica de cuerpo blando
let organicConstant = 1.0;

function setup() {
  createCanvas(710, 400);

  // centrar la figura en la ventana
  centerX = width / 2;
  centerY = height / 2;

  //inicializar arreglos a 0
  for (let i=0; i<nodes; i++){
    nodeStartX[i] = 0;
    nodeStartY[i] = 0;
    nodeY[i] = 0;
    nodeY[i] = 0;
    angle[i] = 0;
  }

  // inicializar freuencias de los nodos de esquina
  for (let i = 0; i < nodes; i++){
    frequency[i] = random(5, 12);
  }

  noStroke();
  frameRate(30);
}

function draw() {
  //fondo semitransparente
  fill(0, 100);
  rect(0, 0, width, height);
  drawShape();
  moveShape();
}

function drawShape() {
  //  calcular posiciones iniciales de nodos
  for (let i = 0; i < nodes; i++){
    nodeStartX[i] = centerX + cos(radians(rotAngle)) * radius;
    nodeStartY[i] = centerY + sin(radians(rotAngle)) * radius;
    rotAngle += 360.0 / nodes;
  }

  // dibujar polígono
  curveTightness(organicConstant);
  fill(255);
  beginShape();
  for (let i = 0; i < nodes; i++){
    curveVertex(nodeX[i], nodeY[i]);
  }
  for (let i = 0; i < nodes-1; i++){
    curveVertex(nodeX[i], nodeY[i]);
  }
  endShape(CLOSE);
}

function moveShape() {
  // mover punto central
  deltaX = mouseX-centerX;
  deltaY = mouseY-centerY;

  // crear efecto resorte
  deltaX *= springing;
  deltaY *= springing;
  accelX += deltaX;
  accelY += deltaY;

  // mover el centro del depredador
  centerX += accelX;
  centerY += accelY;

  // reducir velocidad del efecto resorte
  accelX *= damping;
  accelY *= damping;

  // Cambiar tirantez de la curva
  organicConstant = 1 - ((abs(accelX) + abs(accelY)) * 0.1);

  //mover nodos
  for (let i = 0; i < nodes; i++){
    nodeX[i] = nodeStartX[i] + sin(radians(angle[i])) * (accelX * 2);
    nodeY[i] = nodeStartY[i] + sin(radians(angle[i])) * (accelY * 2);
    angle[i] += frequency[i];
  }
}
