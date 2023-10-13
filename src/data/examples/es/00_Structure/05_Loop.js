/*
 * @name Loop
 * @arialabel Linea horizontal de color blanco en un fondo de color negro la cual se mueve de abajo hacia arriba de la pantalla paralelamente al eje x
 * @description Si la función noLoop() es ejecutada dentro de setup(), el código en draw() 
 * solo se ejecuta una vez. En este ejemplo, da click en el ratón
 * para ejecutar la function loop() y así provocar que la draw()
 * corra continuamente.
 */
let y = 0;

// Las instrucciones dentro de la función setup()
// se ejecutan una vez, cuando el programa empieza
function setup() {
  createCanvas(720, 400); // El tamaño debe ser la primera instrucción
  stroke(255); // Definir que el color del trazado sea blanco
  frameRate(30);
  noLoop()
}
// Las instrucciones en draw() son ejecutadas hasta que
// el programa es detenido. Cada instrucción es ejecutada
// en orden y luego de que la última línea es leída,
// se vuelve a ejecutar draw() desde el principio
function draw() {
  background(0); // Definir que el color del fondo sea negro
  y = y - 1;
  if (y < 0) {
    y = height;
  }
  line(0, y, width, y);
}

function mousePressed(){
  loop();
}
