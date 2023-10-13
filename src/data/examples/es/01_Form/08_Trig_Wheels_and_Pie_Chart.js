/* 
 * @name Ruedas trigonométricas y gráfico circular
 * @arialabel Dos círculos sobre un fondo blanco. Un círculo tiene rebanadas de diferentes colores. Un círculo consta de rectángulo en espiral dentro de la forma de un círculo en un gradiente de arco iris 
 * @frame 400,400
 * @description Contribuido por <a href="https://www.rit.edu/directory/wmhics-w-michelle-harris">
   <b>Prof WM Harris,</b></a> <b>Cómo</b> crear una rueda trigonométrica de colores y una visualización de los datos de edad de una población como un gráfico circular.<br/>
   Las funciones son creadas 
   para la configuración del lienzo, la rueda de colores trigonométrica, el sector del dibujo, y el gráfico circular. 
   El tamaño de las rebanadas son determinadas así como su 
   rango de color. El gráfico circular esta separado color definitivo por valor 
   mientras que la rueda de colores trigonométrica tiene una cantidad fija de rebanadas con un relleno de 
   color de rango.
*/

function setup() {
  createCanvas(400, 400);
  colorMode(HSB);
  angleMode(DEGREES);

  //Variables para el punto central de la rueda de colores
  let x = width / 2;
  let y = height / 2 + 100;
  colorWheel(x, y, 100); //diapositiva 11

  noStroke();
  pieChartPop(200, 100); //diapositiva 12
}

//**** diapositiva 12 demostración trigonométrica de gráfico circular
function pieChartPop(x, y) {
  let [total, child, young, adult, senior, elder] = [577, 103, 69,
    122, 170, 113
  ];
  let startValue = 0;
  let range = 0;

  //Rebanada de niño
  range = child / total;
  drawSlice("blue", x, y, 200, startValue, startValue + range);
  startValue += range;
  //Rebanada de joven
  range = young / total;
  drawSlice("orange", x, y, 200, startValue, startValue + range);
  startValue += range;
  //Rebanada de adulto
  range = adult / total;
  drawSlice("green", x, y, 200, startValue, startValue + range);
  startValue += range;
  //Rebanada de adulto mayor
  range = senior / total;
  drawSlice("tan", x, y, 200, startValue, startValue + range);
  startValue += range;
  //Rebanada de anciano
  range = elder / total;
  drawSlice("pink", x, y, 200, startValue, startValue + range);
  startValue += range;

}

/**
 * drawSlice - dibuja un arco basado en los porcentajes de ángulos. Diapositiva 13
 * Ajusta los ángulos para que el 0% empiece en la parte superior (de hecho, -90)
 * @param {color} fColor - color de relleno
 * @param {number} x - coordenada x del centro
 * @param {number} y - coordenada y del centro
 * @param {number} d - diámetro
 * @param {float} percent1 - porcentaje inicial
 * @param {float} percent2 - porcentaje final
 */
function drawSlice(fColor, x, y, d, percent1, percent2) {
  fill(fColor);
  arc(x, y, d, d, -90 + percent1 * 360, -90 + percent2 * 360);
}

//**** diapositiva 11 demostración de trigonometría 
function colorWheel(x, y, rad) {
  strokeWeight(10);
  strokeCap(SQUARE);

  //Itera 360 grados de lineas, 10 grados por turno
  for (let a = 0; a < 360; a += 10) {
    stroke(a, 150, 200); //hue basado en un
    //radio es 100, ángulo es un grado
    line(x, y, x + rad * cos(a),
      y + rad * sin(a));
  }
}
