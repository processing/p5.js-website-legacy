/*
 * @name Clima
 * @frame 720,280
 * @description Este ejemplo usa datos de clima en formato JSON desde www.metaweather.com.
*/

// un vector de dirección de viento
let wind;
// posición del círculo
let position;

function setup() {
  createCanvas(720, 200);
  // pedir datos a metaweather.com
  let url = 'https://cors-anywhere.herokuapp.com/https://www.metaweather.com/api/location/2459115/';
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
  let weather_today = weather.consolidated_weather[0]
  // obtener el ángulo (convertir a radianes)
  let angle = radians(Number(weather_today.wind_direction));
  // obtener la velocidad del viento
  let windmag = Number(weather_today.wind_speed);

  // mostrar como elementos HTML
  let temperatureDiv = createDiv(floor(weather_today.the_temp) + '&deg;C');
  let windDiv = createDiv("WIND " + windmag + " <small>MPH</small>");

  // hacer un vector
  wind = p5.Vector.fromAngle(angle);
}
