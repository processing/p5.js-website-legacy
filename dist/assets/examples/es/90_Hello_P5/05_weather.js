/*
 * @name Clima
 * @frame 720,280
 * @description Este ejemplo usa datos de clima en formato JSON desde apixu.com.
 * Necesitarás incluir la
 * <a href="http://p5js.org/reference/#/libraries/p5.dom"> biblioteca p5.dom</a>
 * a este ejemplo para que corra en tu máquina.
*/

// un vector de dirección de viento
var wind;
// posición del círculo
var position;

function setup() {
  createCanvas(720, 200);
  // pedir datos a apixu.com
  var url = 'https://api.apixu.com/v1/current.json?key=513d8003c8b348f1a2461629162106&q=NYC';
  loadJSON(url, gotWeather);
  // el círculo empieza en el centro
  position = createVector(width/2, height/2);
  // el viento empieza en (0, 0)
  wind = createVector();
}

function draw() {
  background(200);

  // esta sección dibuja una flecha apuntando en la dirección del viento
  push();
  translate(32, height - 32);
  // rotar según el ángulo del viento
  rotate(wind.heading() + PI/2);
  noStroke();
  fill(255);
  ellipse(0, 0, 48, 48);

  stroke(45, 123, 182);
  strokeWeight(3);
  line(0, -16, 0, 16);

  noStroke();
  fill(45, 123, 182);
  triangle(0, -18, -6, -10, 6, -10);
  pop();

  // mover en la dirección del viento
  position.add(wind);

  stroke(0);
  fill(51);
  ellipse(position.x, position.y, 16, 16);

  if (position.x > width)  position.x = 0;
  if (position.x < 0)      position.x = width;
  if (position.y > height) position.y = 0;
  if (position.y < 0)      position.y = height;


}

function gotWeather(weather) {

  // obtener el ángulo (convertir a radianes)
  var angle = radians(Number(weather.current.wind_degree));
  // obtener la velocidad del viento
  var windmag = Number(weather.current.wind_mph);

  // mostrar como elementos HTML
  var temperatureDiv = createDiv(floor(weather.current.temp_f) + '&deg;');
  var windDiv = createDiv("WIND " + windmag + " <small>MPH</small>");

  // hacer un vector
  wind = p5.Vector.fromAngle(angle);
}
