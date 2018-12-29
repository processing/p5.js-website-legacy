/*
 * @name Ruido 1D
 * @description Uso de ruido Perlin 1D para asignar ubicación.
 */
let xoff = 0.0;
let xincrement = 0.01;

function setup() {
  createCanvas(710, 400);
  background(0);
  noStroke();
}

function draw() {
  // Crear un fondo traslúcido
  fill(0, 10);
  rect(0, 0, width, height);

  //let n = random(0,width);  // Prueba esta línea en vez del ruido (noise)

  // Obtener un valor de ruido basado en xoff y escalarlo
  // según el ancho de la ventana
  let n = noise(xoff) * width;

  // Incrementar xoff en cada ciclo
  xoff += xincrement;

  // Dibujar la elipse en la coordenada producida por el ruido Perlin
  fill(200);
  ellipse(n, height / 2, 64, 64);
}
