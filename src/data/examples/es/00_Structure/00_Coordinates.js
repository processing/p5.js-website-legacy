/*
 * @name Coordenadas
 * @description Todas las formas dibujadas en la pantalla tienen una posición que es
 * especificada como una coordenada. Todas las coordenadas son medidas como una distancia desde el origen, usando el pixel como unidad de medida.
 * El origen [0, 0] es la coordenada en la esquina superior izquierda de la ventana y la coordenada de la esquina inferior derecha es [ancho-1, altura-1].
 */
function setup() {
  // Definir lienzo de 720 pixeles de ancho y 400 pixeles de alto
  createCanvas(720, 400);
}

function draw() {
  // Definir el color del fondo como negro
  // y definir que las figuras sean pintadas sin relleno
  background(0);
  noFill();

  // Los dos parámetros del método point() especifican coordenadas.
  // El primer parámetro es la coordenada x y el segundo es la y.
  stroke(255);
  point(width * 0.5, height * 0.5);
  point(width * 0.5, height * 0.25);

  // Las coordenadas se usan para dibujar figuras, no solo puntos.
  // Los parámetros de las funciones son usados para múltiples
  // propósitos. Por ejemplo, los dos primeros parámetros
  // de line() especifican las coordenadas del primer extremo
  //y los siguientes dos parámetros del segundo extremo.
  stroke(0, 153, 255);
  line(0, height * 0.33, width, height * 0.33);

  // Por defecto, los dos primeros parámetros de rect() son
  // las coordenadas de la esquina superior izquierda y el
  // segundo par son el ancho y el alto.
  stroke(255, 153, 0);
  rect(width * 0.25, height * 0.1, width * 0.5, height * 0.8);
}
